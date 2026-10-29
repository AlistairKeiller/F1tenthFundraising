"""Build the PDF and editable Word drafts using installed Typst and Pandoc."""

from pathlib import Path
import subprocess
from zipfile import ZipFile, ZIP_DEFLATED
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parent.parent
W = "{http://schemas.openxmlformats.org/wordprocessingml/2006/main}"


def child(parent, name):
    result = parent.find(W + name)
    return result if result is not None else ET.SubElement(parent, W + name)


def style_word(path):
    """Apply readable fonts and the team's blue to Pandoc's editable output."""
    with ZipFile(path) as source:
        parts = {name: source.read(name) for name in source.namelist()}
    styles = ET.fromstring(parts["word/styles.xml"])
    defaults = child(child(child(styles, "docDefaults"), "rPrDefault"), "rPr")
    for key in ("ascii", "hAnsi", "cs"):
        child(defaults, "rFonts").set(W + key, "Helvetica Neue")
    child(defaults, "sz").set(W + "val", "20")
    for style in styles.findall(W + "style"):
        style_id = style.get(W + "styleId", "")
        if style_id in {"Normal", "BodyText", "FirstParagraph", "Compact"}:
            run = child(style, "rPr")
            child(run, "sz").set(W + "val", "20")
            for key in ("ascii", "hAnsi"):
                child(run, "rFonts").set(W + key, "Helvetica Neue")
        if style_id in {"Title", "Heading1", "Heading2", "Heading3"}:
            run = child(style, "rPr")
            for key in ("ascii", "hAnsi"):
                child(run, "rFonts").set(W + key, "Avenir Next")
            child(run, "color").set(W + "val", "0072B3")
            child(run, "b")
            child(run, "sz").set(W + "val", {"Title": "56", "Heading1": "40", "Heading2": "26", "Heading3": "22"}[style_id])
            child(child(style, "pPr"), "keepNext")
    parts["word/styles.xml"] = ET.tostring(styles, encoding="utf-8", xml_declaration=True)
    doc = ET.fromstring(parts["word/document.xml"])
    for section in doc.iter(W + "sectPr"):
        margin = child(section, "pgMar")
        for edge in ("top", "bottom", "left", "right"):
            margin.set(W + edge, "936")
    parts["word/document.xml"] = ET.tostring(doc, encoding="utf-8", xml_declaration=True)
    with ZipFile(path, "w", ZIP_DEFLATED) as output:
        for name, content in parts.items():
            output.writestr(name, content)


subprocess.run([
    "typst", "compile", "--root", str(ROOT),
    str(ROOT / "drafts/sponsor-packet.typ"),
    str(ROOT / "F1TENTH-UCI-Sponsor-Packet.pdf"),
], check=True)
for source, output in [
    ("sponsor-packet.md", "F1TENTH-UCI-Sponsor-Packet.docx"),
    ("sponsor-emails.md", "F1TENTH-UCI-Sponsor-Emails.docx"),
]:
    output_path = ROOT / output
    subprocess.run([
        "pandoc", str(ROOT / "drafts" / source),
        "--resource-path=" + str(ROOT / "drafts"),
        "--standalone", "-o", str(output_path),
    ], check=True)
    style_word(output_path)
    print("Built", output)
print("Built F1TENTH-UCI-Sponsor-Packet.pdf")
