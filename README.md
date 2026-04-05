# AisthOS

**The Perception Operating System that grows with you.**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![AisthOS Inside](https://img.shields.io/badge/AisthOS_Inside™-Certification-purple.svg)](certification/)

> Every OS compiles *down*. AisthOS compiles *up*. And it learns from what it sees.

AisthOS converts raw sensor data (video, audio, IMU, temperature...) into structured, anonymized semantic metadata — **Sparks**. It then learns from those Sparks, develops new skills automatically, and evolves alongside you. All locally. All private. Raw data never leaves the device.

## Quick start

```bash
# Coming soon
docker-compose up        # Run on any machine
ollama run aisthos       # Local AI backend
```

## Core concepts

```
Sensor signals → [Template: what to extract]
              → [Filter: when to extract]
              → [Perception Compiler: AI engine]
              → Spark (anonymized knowledge unit)
```

- **Template** `T = (M, E, F, R)` — multimodal schema defining which semantic entities to extract
- **Filter** `F = (start, stop, step, significance)` — semantic trigger conditions
- **Spark** — structured metadata, ~200 bytes. Contains knowledge, not data. Privacy-by-design.

## Architecture

```
Layer 6: Spark Layer          — generation, storage, export
Layer 5: Perception Compiler  — AI models for semantic extraction
Layer 4: Template+Filter      — what and when to extract
Layer 3: Constitutional Layer — ethics, privacy, PII validation
Layer 2: Skill Runtime        — skills and extensions
Layer 1: HAL                  — hardware drivers (ESP32, RPi, cameras...)
```

## Performance (existing hardware)

| Device | Chip | FPS | Power | Battery |
|--------|------|-----|-------|---------|
| Smart glasses | GAP9 RISC-V | 18 fps (e2e) | 62.9 mW | 9.3 h |
| Dashcam | Ambarella CV72S | 4×5MP + AI | <3 W | Car power |
| RPi5 + Hailo-8L | 13 TOPS | ~120 fps (batch=8) | 4–5 W | Mains |
| Smartphone | Snapdragon 8 Elite | 56 models <5 ms | ~45 TOPS | Yes |

**Full pipeline on RPi5 + Hailo-8L:**
`capture(5ms) → detect(8ms) → classify(3ms) → filter(1ms) → spark(2ms) = 19ms → 52 fps`

**Compression:** 1s of 4K video (H.265) ≈ 2–3 MB → 1 Spark ≈ 200 bytes → **>10,000× reduction**

## Grows With You

AisthOS doesn't just observe — it **learns and evolves** through three parallel tracks:

| Track | Speed | How | Example |
|-------|-------|-----|---------|
| **A: Fast** | Real-time | Contextual bandits + Reflexion | Learns which greetings you prefer |
| **B: Medium** | Nightly | Pattern mining → auto-generates SKILL.md | Discovers your evening routine |
| **C: Slow** | Weekly | MLX LoRA fine-tuning on Sparks | Adapts communication style to yours |

**Growth stages:** Infant (day 0–3) → Child (week 1–2) → Teen (month 1–2) → Adult (month 3+)

**Portable personality:** Your learned preferences, skills, and personality export to any AisthOS device. Create your companion once, use it everywhere.

## AisthOS Inside™ Certification

Open standard guaranteeing architectural privacy protection. [Details →](certification/)

**7 principles:** P1 no raw data storage · P2 Sparks-only output · P3 no PII in Sparks · P4 user sovereignty · P5 visible indicator · P6 no hidden modes · P7 open audit

**4 certification levels:** Self-Certified (free) → Verified → Certified → Strategic Partner

## Security

6 identified threat types (4 AisthOS-specific + 2 common). [Full analysis →](certification/security-annex/)

| Threat | Defense |
|--------|---------|
| Template Injection | Declarative schemas, max 8 fields, no free text |
| Filter Surveillance | Max 3 attributes, person-specific banned, entropy check |
| Physical Prompt Injection | Text quarantine, dual PII detection, 95% fail-safe |
| Adversarial PII Bypass | Cascade detection (multiple architectures) |
| LoRA Poisoning (common) | Signed adapters only in perception pipeline |
| Side-channel (common) | Secure Boot, Flash Encryption, JTAG disable |

**Resolution cap:** 160×120 for always-on mode (facial recognition impossible) + anti-upscaling noise.

## Applications

| Domain | Template | What you get |
|--------|----------|-------------|
| Companion AI | Emotional state | Personalized robot behavior |
| Autonomous driving | Road situations | Training data (free vs Tesla's $24–48/hr) |
| Retail analytics | Customer behavior | Routes, dwell time, conversion |
| Smart glasses | Scene perception | Privacy-safe AR (solving the Google Glass problem) |
| Scientific discovery | Physical experiments | Structured data for automated law discovery |

## Ecosystem

AisthOS is designed to work with:

| Project | Integration |
|---------|------------|
| [Ollama](https://ollama.com) | `ollama run aisthos` — local LLM backend |
| [Home Assistant](https://www.home-assistant.io) | Wyoming Protocol voice satellite |
| [Hailo](https://hailo.ai) | Tested on Hailo-8L |
| [ESPHome](https://esphome.io) | ESP32-S3 firmware |
| [MCP](https://github.com/modelcontextprotocol) | AisthOS MCP Server |

## Papers

- **[AisthOS: A Perception Operating System](paper/)** — arXiv (2026)

## Contributing

This project is in early development. We welcome:
- Security review of our [threat model](certification/security-annex/)
- Testing on new edge AI hardware
- Discussion of [certification standards](certification/)
- Comments via [GitHub Issues](https://github.com/aisthos/aisthos/issues)

## License

[MIT](LICENSE) — code is free for any use.

AisthOS Inside™ is a certification mark — unauthorized use prohibited. [Details](certification/).

---

**aisthos.dev** · Built by [Vladimir Desyatov](https://github.com/desve) with AI-assisted development.
