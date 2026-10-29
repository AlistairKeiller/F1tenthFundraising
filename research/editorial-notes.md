# Editorial notes — internal, not for sponsor distribution

Prepared October 29, 2026. This file records sources and draft assumptions so the team can finalize the materials quickly.

## Facts from the team website

Source: [F1TENTH@UCI](https://f1tenth.club), including the JavaScript-rendered site content retrieved October 29, 2026. A local snapshot is saved in `website.html`, `website.js`, and `website.css`.

- Team identity: F1TENTH@UCI, University of California, Irvine.
- Website headline: “Speed through code.”
- Competition described as RoboRacer, previously F1TENTH.
- Research focus: end-to-end autonomous racing via reinforcement learning, including PPO and DreamerV3.
- Hardware: NVIDIA Jetson, Hokuyo LiDAR, VESC drive, telemetry, and ROS 2.
- Simulation: custom Warporacer, AutoDrive, and an early Isaac Lab integration. The packet focuses on the first two and does not imply the early integration is complete.
- Student work: software and AI; hardware and chassis; operations and media. The site says no previous robotics experience is required.
- Public contact: f1tenth@uci.edu. GitHub, Instagram, and YouTube links in the packet come from the site.
- Logo and photos were downloaded directly from the website. `car-side.png` is actually a simulation screenshot, despite its filename; it is not used as a photograph of the physical vehicle.
- The calendar lists June 22, 2026 in Detroit as “upcoming,” which is in the past as of preparation. No future competition date or destination is asserted in these drafts.

## Facts supplied by the user

- Fifth-place international finish at IEEE.
- Fiscal sponsorship through HCB.

The website did not provide a readable result record or the team's HCB donation link. The result is written as a **past fifth-place competition finish**, not a current worldwide ranking. No year, conference name, number of entrants, or competition division has been invented. Add the exact event, year, and result link when available.

The user's statement that in-kind donations are a tax write-off has been qualified: eligible donated goods may be deductible, while the value of donated time and services generally is not. Do not promise that every contribution, credit, license, discount, loan of equipment, or service is deductible.

## Donation wording sources

- [HCB: What is fiscal sponsorship?](https://help.hcb.hackclub.com/en/articles/15409723-what-is-fiscal-sponsorship-and-how-is-it-different-from-starting-my-own-501-c-3): The Hack Foundation is Hack Club's legal name; fiscal sponsorship operates under its 501(c)(3); shared EIN 81-2908499. This is the fiscal sponsor's EIN, not a separately assigned team EIN.
- [HCB: Donation receipts](https://help.hcb.hackclub.com/en/articles/15410030-how-do-donation-receipts-and-refunds-work): monetary donations through HCB receive an emailed receipt.
- [IRS Publication 526](https://www.irs.gov/publications/p526): eligible charitable gifts, noncash contribution rules, benefits received in return, and no charitable deduction for the value of time or services. Donated inventory and other property can have deduction limits; do not promise a retail-value deduction.
- [IRS: Written acknowledgments](https://www.irs.gov/charities-non-profits/charitable-organizations/charitable-contributions-written-acknowledgments): acknowledgments describe noncash gifts without assigning value and address any goods or services provided in return.
- [IRS: Advertising or qualified sponsorship payments?](https://www.irs.gov/charities-non-profits/advertising-or-qualified-sponsorship-payments): distinguishes value-neutral sponsor acknowledgment from advertising and addresses substantial return benefits. This concerns the charity's treatment of sponsorship revenue and is not a blanket donor deductibility guarantee.

No HCB source located in this review established the team's exact noncash intake workflow. The packet asks donors to coordinate acceptance and documentation with the team and HCB before delivery; it does not promise automatic HCB equipment receipts.

## Suggested terms and remaining edits

These are drafting choices, not claims about an existing program:

- Contribution levels: Supporter $250–$999; Partner $1,000–$2,499; Champion $2,500–$4,999; Lead Sponsor $5,000+.
- Recognition: website acknowledgment, optional logos/social acknowledgment, team presentation materials, and vehicle or apparel placement. Confirm the team can deliver each benefit and HCB accepts the arrangement before making commitments.
- Proposed funding categories: hardware, compute, fabrication/testing, and competition travel. These are plausible priorities informed by the website, not a confirmed team budget. There is no asserted fundraising goal, budget total, cost-per-item promise, or allocation percentage.
- The general email's $1,000 ask is a proposed starting point. Adjust for the prospect and actual need.
- No audience size, impression count, membership total, hiring access, exclusivity, race schedule, university endorsement, or existing commercial sponsor has been claimed.

Before sending, replace email placeholders; review proposed contribution levels and recognition; confirm equipment requirements; add the exact race result if available; and insert the verified team HCB donation URL if desired. The packet can otherwise direct donors to the public team email for donation instructions.

## Files

- `../F1TENTH-UCI-Sponsor-Packet.pdf`: illustrated four-page packet.
- `../F1TENTH-UCI-Sponsor-Packet.docx`: editable packet text and photos.
- `../F1TENTH-UCI-Sponsor-Emails.docx`: editable email drafts and internal personalization notes.
- `../drafts/sponsor-packet.md` and `../drafts/sponsor-emails.md`: editable plain-text sources.
- `../drafts/sponsor-packet.typ`: layout source for the PDF.

Build the PDF from the workspace root with `typst compile --root . drafts/sponsor-packet.typ F1TENTH-UCI-Sponsor-Packet.pdf`.
