# AGENTS.md — Instructions for AI Coding Agents

## Project Overview
AisthOS is a Perception Operating System. It converts raw sensor signals into structured, anonymized metadata (Sparks) using a Template-Filter-Spark pipeline.

## Repository Structure
```
aisthos/
├── README.md              — Project overview, architecture, benchmarks
├── REFERENCES.md          — Academic citations, ecosystem links, legal compliance
├── LICENSE                — MIT
├── llms.txt               — Structured summary for LLM consumption
├── AGENTS.md              — This file
├── index.html             — Landing page (aisthos.dev)
├── mascot.png             — Aisth mascot image
├── certification/
│   ├── README.md          — AisthOS Inside™ Certification Standards v1.0
│   └── security-annex/
│       └── README.md      — Security Annex: 6 threats, 7 tests, hard limits
└── paper/
    ├── AisthOS_Perception_OS.docx  — arXiv paper (English)
    └── references.bib     — BibTeX references
```

## Key Technical Concepts
- **Template** `T = (M, E, F, R)` — multimodal schema for semantic extraction
- **Filter** `F = (start, stop, step, significance)` — semantic event triggers
- **Spark** — ~200 byte anonymized knowledge unit (never contains raw sensor data)
- **Perception Compiler** — AI engine: sensors + Template + Filter → Sparks
- **Constitutional Layer** — PII validation, ethics checks on every Spark

## Code Style
- Python 3.9+, type hints preferred
- MIT license headers on all source files
- Documentation in English, inline comments acceptable in English or Russian

## Testing
No automated tests yet (early stage). When contributing code:
- Include unit tests for new functions
- Test edge cases for privacy-critical code (PII detection, Template validation)

## Build & Run
```bash
# Not yet available — coming soon
docker-compose up           # Run full stack
ollama run aisthos          # Local AI backend
```

## Contributing
- Open issues for discussion before large changes
- Security vulnerabilities: report via GitHub Security Advisories
- All contributions must comply with the 7 AisthOS Inside™ principles

## Architecture Decision Records
Key architectural decisions are documented in the arXiv paper (paper/ directory) and certification standards (certification/ directory).
