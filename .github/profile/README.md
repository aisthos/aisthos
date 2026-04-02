# AisthOS — The Perception Operating System

**Reverse compilation of sensor signals into structured knowledge.**

Every operating system compiles *down* — from code to machine signals.
AisthOS compiles *up* — from sensor signals to semantic knowledge.

## What is AisthOS?

AisthOS (from Greek *aisthesis* — perception) is an open-source operating system that converts raw sensor data into structured, anonymized metadata called **Sparks**. Raw data never leaves the device.

**Three core concepts:**
- **Template** — *what* to extract (multimodal schema)
- **Filter** — *when* to extract (semantic trigger)
- **Spark** — the result (a unit of anonymized knowledge)

Together they form the **Perception Compiler**.

## Why?

| Problem | Status quo | AisthOS |
|---------|-----------|---------|
| Training data exhausted | Synthetic data → model collapse | Real-world Sparks from billions of devices |
| Annotation costs $6–50/hr | Manual labeling | Automatic via Template+Filter |
| GPU shortage, $25–40K each | Build more data centers | Distributed edge processing |
| Privacy violations | Raw data in the cloud | Sparks only — raw data never stored |

## It works today

| Device | Chip | Performance | Power |
|--------|------|-------------|-------|
| Smart glasses | GAP9 RISC-V | 18 fps | 62.9 mW |
| Dashcam | Ambarella CV72S | 4×5MP + AI | <3 W |
| Camera + RPi5 | Hailo-8L (13 TOPS) | ~120 fps | 4–5 W |

Full pipeline: **capture → detect → classify → filter → Spark = 19 ms (52 fps)**

1 second of 4K video = 2–3 MB. 1 Spark = ~200 bytes. **Compression: >10,000×**

## AisthOS Inside™

Open certification standard guaranteeing architectural privacy protection.
Code is MIT. The certification mark requires passing verification.

**7 principles:** no raw data storage, Sparks-only output, no PII, user sovereignty, visible indicator, no hidden modes, open audit.

[→ Certification Standards](certification/)
[→ Security Annex](certification/security-annex/)

## Applications

- 🤖 **Companion AI** — robots with emotional intelligence
- 🚗 **Autonomous driving** — dashcam Sparks instead of $48/hr operators
- 🏪 **Business analytics** — customer behavior without surveillance
- 👓 **Smart glasses** — solving the Google Glass privacy problem
- 🔬 **Scientific discovery** — automated multimodal observation → physics laws

## Get involved

AisthOS is in early development. We're looking for:
- Privacy/security researchers to review our [threat model](certification/security-annex/)
- Edge AI engineers to test on new hardware
- Community members to discuss the [certification standard](certification/)

**Links:**
- 📄 [arXiv Paper](paper/) — "AisthOS: A Perception Operating System"
- 📋 [Certification Standards](certification/) — AisthOS Inside™ v1.0
- 🔒 [Security Annex](certification/security-annex/) — 6 threat types, 7 tests
- 📚 [References & Ecosystem](REFERENCES.md)

## License

MIT — free for any use.
AisthOS Inside™ is a certification mark — [details](certification/).

---

*aisthos.dev* · *Built with transparency: AI-assisted development, human-driven vision.*
