# AisthOS Inside™ Certification Standards v1.0

**DRAFT FOR PUBLIC COMMENT** — 90-day comment period from publication date.

## What is AisthOS Inside™?

An open certification program guaranteeing that a device with perception capabilities processes all sensor data locally and outputs only anonymized semantic metadata (Sparks). Raw data — video, audio, sensor readings — is never stored or transmitted.

## Seven Principles

| # | Principle | Description |
|---|-----------|-------------|
| P1 | No raw data storage | Sensor data exists only in volatile memory during processing |
| P2 | Sparks-only output | Only anonymized metadata leaves the device |
| P3 | No PII in Sparks | Constitutional Layer validates every Spark |
| P4 | User sovereignty | Full control over Templates, Filters, and Spark export |
| P5 | Transparent operation | Tamper-resistant visible indicator when perception is active |
| P6 | No hidden modes | No debug mode, no developer override, no bypass |
| P7 | Open audit | Perception pipeline source code available for inspection |

## Certification Levels

| Level | For | Volume | Fee |
|-------|-----|--------|-----|
| Self-Certified | Open-source, makers | <1,000 devices | Free |
| Verified | Startups | <100K/year | $0.05–0.10/device |
| Certified | Enterprise | <1M/year | $0.02–0.05/device |
| Strategic Partner | Global manufacturers | >1M/year | $0.01–0.03/device |

## Compliance Tests (T01–T07)

| Test | What | Pass criteria |
|------|------|---------------|
| T01 | Raw data persistence | Zero raw data files after perception cycle |
| T02 | Network capture | Zero raw data packets |
| T03 | PII detection | 100% of 100 known PII samples blocked |
| T04 | Indicator tamper | Sensor stops within 500 ms |
| T05 | API audit | Zero endpoints return raw data |
| T06 | Offline operation | Full functionality without network |
| T07 | Encryption | AES-256 storage + TLS 1.3 transmission |

## Legal Alignment

Designed to comply with: Art. 138.1 RF Criminal Code, GDPR, EU AI Act (Aug 2026), HIPAA, Illinois BIPA, COPPA, California SB 1130, China PIPL.

## How to Comment

- GitHub Issues: [github.com/aisthos/aisthos/issues](https://github.com/aisthos/aisthos/issues)
- Email: cert@aisthos.dev (coming soon)

## Full Specification

The complete certification standard document (10 sections + appendices) is available in [.docx format](AisthOS_Inside_Certification_Standards_v1.docx).

## License

This standard is published under **CC BY 4.0**.
The AisthOS Inside™ certification mark is protected.
