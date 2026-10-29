#let blue = rgb("#00a3ff")
#let ink = rgb("#0f1115")
#let yellow = rgb("#ffd600")
#let gray = rgb("#556171")
#let pale = rgb("#f1f5f9")
#let rule = rgb("#dbe3eb")

#set document(title: "F1TENTH@UCI — Sponsorship Proposal", author: "F1TENTH@UCI", keywords: ("autonomous racing", "sponsorship", "UC Irvine"))
#set page(paper: "us-letter", margin: (x: 36pt, top: 30pt, bottom: 36pt), footer: context {
  set text(font: "Helvetica Neue", size: 7.2pt, fill: gray)
  line(length: 100%, stroke: 0.5pt + rule)
  v(5pt)
  grid(columns: (1fr, auto, auto), gutter: 18pt,
    [F1TENTH\@UCI · SPONSORSHIP PROPOSAL],
    [DRAFT FOR TEAM REVIEW],
    [#counter(page).display("01") / 04],
  )
})
#set text(font: "Helvetica Neue", size: 10pt, fill: ink)
#set par(leading: 4pt, spacing: 9pt)
#set table(inset: 10pt, stroke: 0.5pt + rule)
#show link: set text(fill: rgb("#0072b3"))

#let small(body, color: gray) = text(font: "Menlo", size: 7.5pt, fill: color, tracking: 0.5pt, body)
#let title(body) = { set par(leading: 1pt); text(font: "Avenir Next", weight: "bold", size: 31pt, body) }
#let subhead(body) = { v(5pt); text(font: "Avenir Next", weight: "bold", size: 13pt, body); v(5pt) }
#let masthead(section) = {
  grid(columns: (29pt, 1fr, auto), gutter: 9pt, align: horizon,
    image("../assets/logo.png", width: 29pt),
    [#text(font: "Avenir Next", weight: "bold", size: 14pt)[F1TENTH#text(fill: blue)[\@UCI]]\ #small[UNIVERSITY OF CALIFORNIA, IRVINE]],
    small(section),
  )
  v(10pt)
  line(length: 100%, stroke: 1pt + ink)
  v(15pt)
}
#let callout(body, background: pale) = block(width: 100%, fill: background, inset: 13pt, radius: 2pt, body)
#let cellhead(body) = table.cell(fill: ink, text(fill: white, weight: "bold", size: 9pt, body))

#masthead[SPONSORSHIP PROPOSAL]
#small(color: rgb("#0072b3"))[STUDENT ENGINEERING. INTERNATIONAL COMPETITION.]
#v(8pt)
#text(font: "Avenir Next", size: 43pt, weight: "bold")[SPEED THROUGH\ #text(fill: blue)[CODE.]]
#v(7pt)
#text(size: 13pt, fill: gray)[Help UC Irvine students turn autonomous racing research into real performance on the track.]
#v(12pt)
#image("../assets/car-hero-print.jpg", width: 100%, height: 270pt, fit: "cover", alt: "F1TENTH@UCI autonomous race car with onboard sensors and computing")
#v(10pt)
#grid(columns: (1fr, 1fr, 1fr), gutter: 0pt,
  block(fill: yellow, inset: 12pt, height: 66pt)[#text(font: "Avenir Next", size: 24pt, weight: "bold")[4TH]\ #text(size: 8.4pt)[International finish at an\ IEEE F1TENTH competition]],
  block(fill: pale, inset: 12pt, height: 66pt)[#text(font: "Avenir Next", size: 24pt, weight: "bold")[1:10]\ #text(size: 8.4pt)[Scale of our autonomous\ racing vehicles]],
  block(fill: ink, inset: 12pt, height: 66pt)[#text(font: "Avenir Next", size: 24pt, weight: "bold", fill: blue)[HCB]\ #text(size: 8.4pt, fill: white)[Fiscal sponsorship through\ The Hack Foundation]],
)
#v(12pt)
F1TENTH\@UCI brings together software, artificial intelligence, electronics, and mechanical design to build cars that navigate and race autonomously. We compete in F1TENTH, now known as RoboRacer.

Our research focuses on reinforcement learning: training driving policies in simulation and bringing them onto real vehicles. We are seeking financial and in-kind sponsors to strengthen our racing platform and give students more opportunities to build, test, and compete.
#v(2pt)
#callout(background: pale)[
  #text(weight: "bold", size: 12pt)[Let's build the next lap together.]\
  #link("mailto:f1tenth@uci.edu")[f1tenth\@uci.edu] #h(12pt) #link("https://f1tenth.club")[f1tenth.club]
]

#pagebreak()
#masthead[01 / THE ENGINEERING]
#title[What your support\ makes possible.]
#v(8pt)
Our students connect learning algorithms, real-time software, and physical hardware. Sponsorship helps them take ideas through the complete development cycle.
#v(2pt)
#subhead[From simulation to the starting line]
#set text(size: 9.3pt)
#table(columns: (107pt, 1fr),
  table.cell(fill: pale)[*01 / LEARN*\ In simulation],
  [Reinforcement learning research using PPO and DreamerV3; development in our custom Warporacer simulator and validation in AutoDrive.],
  table.cell(fill: pale)[*02 / BUILD*\ On real hardware],
  [NVIDIA Jetson computing, Hokuyo LiDAR, VESC motor control, and ROS 2, alongside student work in CAD, PCB design, and mechatronics.],
  table.cell(fill: pale)[*03 / TEST*\ On the track],
  [Integrating perception, planning, control, and telemetry to evaluate how simulation-trained driving behaves on physical vehicles.],
)
#subhead[Funding priorities]
#text(size: 9.3pt, fill: gray)[Proposed areas for support; we can match a contribution to your interests and our current needs.]
#v(7pt)
#table(columns: (123pt, 1fr), inset: 9pt,
  cellhead[Priority], cellhead[What your contribution would help cover],
  [*Hardware & reliability*], [Sensors, onboard computing, motor controllers, batteries, tires, and replacement parts to keep vehicles available for development.],
  [*Simulation & training*], [GPU or cloud compute and development tools for more training experiments and evaluation before track deployment.],
  [*Fabrication & testing*], [PCB fabrication, mechanical parts, prototyping materials, and track supplies to build, test, and refine designs.],
  [*Competition participation*], [Registration, travel, lodging, and equipment transport to bring students and vehicles to future competitions.],
)
#subhead[Equipment and technical support]
Potential contributions include compatible compute modules, sensors, VESC-compatible components, batteries and chargers, tires, PCB fabrication, machining, and prototyping materials. We also welcome conversations about software access, compute credits, and technical mentorship.
#v(3pt)
#callout[
  *Have equipment to contribute?* Contact #link("mailto:f1tenth@uci.edu")[f1tenth\@uci.edu] before delivery so we can confirm specifications, quantities, condition, and acceptance through our fiscal sponsor. Goods and services have different tax treatment; see page 4.
]

#pagebreak()
#masthead[02 / THE PARTNERSHIP]
#title[Back the students\ building autonomy.]
#v(8pt)
#set text(size: 10pt)
Support a team working across the complete autonomy stack. Your contribution helps students test their ideas against the demands of a physical race car.
#subhead[Suggested contribution levels]
#callout(background: rgb("#fff8cf"))[
  #text(size: 9pt)[*Draft proposal.* Amounts and recognition are suggested starting points for team review. Final recognition and timing will be agreed with each sponsor before a commitment is accepted.]
]
#v(9pt)
#set text(size: 9.3pt)
#table(columns: (96pt, 95pt, 1fr), inset: 10pt,
  cellhead[Level], cellhead[Contribution · USD], cellhead[Proposed recognition],
  [*Supporter*], [\$250–\$999], [Name acknowledgment on the team website and a season-end impact update.],
  [*Partner*], [\$1,000–\$2,499], [Supporter recognition, with a website logo and a social media thank-you acknowledgment.],
  [*Champion*], [\$2,500–\$4,999], [Partner recognition, plus logo acknowledgment in team presentation materials.],
  [*Lead Sponsor*], [\$5,000+], [Champion recognition, plus logo placement on a team vehicle or apparel where space and event rules permit.],
)
#v(9pt)
Contributions of any size are welcome. Recognition for accepted in-kind contributions is arranged individually; recognition levels do not establish a donation's tax value. Logo placement is subject to team approval, available space, applicable rules, and sponsor brand guidelines.
#subhead[Stay connected to the work]
We propose sharing development updates, competition results, and a season-end account of what sponsor support helped make possible. We also welcome conversations with engineers interested in discussing the team's technical work.
#v(7pt)
#image("../assets/team-photo-print.jpg", width: 100%, height: 169pt, fit: "cover", alt: "The F1TENTH@UCI team gathered with its autonomous race car")
#v(4pt)
#text(size: 7.5pt, fill: gray)[The F1TENTH\@UCI team · Photo from f1tenth.club]

#pagebreak()
#masthead[03 / MAKE IT HAPPEN]
#title[Support the next lap.]
#v(8pt)
#set text(size: 10pt)
Whether you can contribute funding, equipment, or technical resources, we would welcome a conversation about supporting our students.
#v(6pt)
#grid(columns: (1fr, 1fr, 1fr), gutter: 12pt,
  block(fill: pale, inset: 12pt, height: 111pt)[
    #text(size: 22pt, weight: "bold", fill: rgb("#0072b3"))[01]\
    *Choose a contribution*\
    #text(size: 9pt)[Financial support, equipment, compute access, or another technical resource.]
  ],
  block(fill: pale, inset: 12pt, height: 111pt)[
    #text(size: 22pt, weight: "bold", fill: rgb("#0072b3"))[02]\
    *Confirm the details*\
    #text(size: 9pt)[Discuss the current need, amount or specifications, recognition, and timing.]
  ],
  block(fill: pale, inset: 12pt, height: 111pt)[
    #text(size: 22pt, weight: "bold", fill: rgb("#0072b3"))[03]\
    *Coordinate with HCB*\
    #text(size: 9pt)[Contact us for payment instructions or equipment acceptance and documentation.]
  ],
)
#v(11pt)
#callout(background: yellow)[
  #text(font: "Avenir Next", size: 15pt, weight: "bold")[Start a sponsorship conversation.]\
  #link("mailto:f1tenth@uci.edu")[#text(fill: ink, weight: "bold")[f1tenth\@uci.edu]] #h(15pt) #link("https://f1tenth.club")[#text(fill: ink)[f1tenth.club]]
]
#subhead[Fiscal sponsorship and donations]
#set text(size: 9.2pt)
F1TENTH\@UCI is fiscally sponsored through HCB by *The Hack Foundation (doing business as Hack Club)*, a 501(c)(3) public charity. The fiscal sponsor's EIN is *81-2908499*. Contributions should be coordinated through HCB for the benefit of F1TENTH\@UCI. #link("https://help.hcb.hackclub.com/en/articles/15409723-what-is-fiscal-sponsorship-and-how-is-it-different-from-starting-my-own-501-c-3")[About HCB fiscal sponsorship.]

Eligible cash and donated-goods contributions may be tax-deductible to the extent allowed by law. Deductibility depends on the donor's circumstances and any goods or services received in return. The value of donated time or services generally is not deductible as a charitable contribution. Donors determine the value of donated property and are responsible for applicable tax documentation. #link("https://www.irs.gov/publications/p526")[IRS charitable contribution guidance.]

HCB provides emailed receipts for monetary donations processed through its donation system. Noncash acknowledgments describe donated property without assigning its value; we will coordinate the appropriate documentation with our fiscal sponsor. #link("https://help.hcb.hackclub.com/en/articles/15410030-how-do-donation-receipts-and-refunds-work")[HCB receipts] · #link("https://www.irs.gov/charities-non-profits/charitable-organizations/charitable-contributions-written-acknowledgments")[IRS acknowledgments].
#subhead[Follow the engineering]
#grid(columns: (1fr, 1fr), gutter: 12pt,
  [*Code*\ #link("https://github.com/uci-f1tenth")[github.com/uci-f1tenth]],
  [*Instagram / YouTube*\ #link("https://www.instagram.com/f1tenthuci/")[\@f1tenthuci] / #link("https://www.youtube.com/@F1TenthUCI")[\@F1TenthUCI]],
)
#v(12pt)
#text(font: "Avenir Next", size: 17pt, weight: "bold")[Help us turn the next experiment\ into the next lap.]
#v(9pt)
#text(size: 7.5pt, fill: gray)[Team profile and photography: #link("https://f1tenth.club")[f1tenth.club]. This proposal is for F1TENTH\@UCI; donations are coordinated through its fiscal sponsor.]
