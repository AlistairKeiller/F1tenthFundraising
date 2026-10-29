# F1TENTH@UCI fundraising drafts

- [Sponsor packet — PDF](F1TENTH-UCI-Sponsor-Packet.pdf): four illustrated pages using the team's website, logo, and photos.
- [Sponsor packet — editable Word document](F1TENTH-UCI-Sponsor-Packet.docx).
- [Sponsor emails — editable Word document](F1TENTH-UCI-Sponsor-Emails.docx): financial sponsorship, equipment sponsorship, and two follow-ups.
- [Email drafts — Markdown](drafts/sponsor-emails.md).
- [Packet text — Markdown](drafts/sponsor-packet.md).

The contribution levels and recognition are proposed terms for team review. Replace bracketed email fields and tailor the suggested $1,000 request before sending. The packet uses the public team email for donation instructions because a team HCB donation URL was not supplied.

The fifth-place international finish and HCB sponsorship were supplied by the team. The result is described as a competition finish. Add the exact IEEE event and year when available. Eligible cash and donated goods may be tax-deductible to the extent allowed by law; donated time and services have different rules.

[Editorial notes and sources](research/editorial-notes.md) record verified website details, donation guidance, and draft assumptions. The Word packet provides editable text and images; the PDF has the designed four-page layout.

To rebuild, install Typst and Pandoc, then run:

```sh
python3 drafts/build.py
```

The layout uses Helvetica Neue and Avenir Next, which are available in the preparation environment. Adjust the font names in `drafts/sponsor-packet.typ` and `drafts/build.py` if editing on another system.
