# AisthOS Security Annex

**Appendix to AisthOS Inside™ Certification Standards v1.0**

## Threat Model

Perception OS is a new class of systems. Some of its threats are new too.

We identified **6 threat types**: 4 specific to AisthOS (no analogues in conventional systems) + 2 common (well-studied in adjacent fields).

| ID | Threat | Priority | Specificity |
|----|--------|----------|-------------|
| T1 | Template Injection | P0 — before any deployment | AisthOS-specific |
| T2 | Filter Surveillance | P0 — before any deployment | AisthOS-specific |
| T3 | Physical Prompt Injection | P0 — before any deployment | AisthOS-specific |
| T4 | Adversarial PII Bypass | P1 — before beta | AisthOS-specific |
| T5 | LoRA / Model Poisoning | P1 — before beta | Common (AI supply chain) |
| T6 | Side-channel on Edge | P2 — before commercial | Common (embedded security) |

## Defenses

### T1: Template Injection
Templates are declarative schemas from a fixed ontology — no free text. Max 8 fields. Strict typing (enum, float with range, bool). Signed with hash. Any modification invalidates.

### T2: Filter Surveillance
Max 3 attributes per Filter (identification requires 5–7). Person-specific attributes banned. Anti-targeting entropy check: if Filter triggers on <5% of population — rejected. All Filters logged.

### T3: Physical Prompt Injection
All detected text in camera frame is quarantined as untrusted data. Dual PII detection: rule-based (regex) + neural, running in parallel. Fail-safe: if confidence < 95%, Spark is not generated.

### T4: Adversarial PII Bypass
Cascade detection: multiple model architectures (YOLO + SSD + rule-based). If any one suspects PII — Spark blocked. False positive preferred over false negative.

### T5: LoRA / Model Poisoning
User LoRAs banned in perception pipeline (allowed in companion AI personalization only). Signed adapters from official repository only. Model provenance hashing. PEFTGuard/SafeLoRA screening.

### T6: Side-channel on Edge
Standard embedded security: Secure Boot + Flash Encryption, JTAG disable via eFuse, 3-pass RAM scrubbing. Key defense: Principle P1 — raw data is never written to flash in the first place.

## Hard Limits (enforced by OS kernel)

| Parameter | Limit | Rationale |
|-----------|-------|-----------|
| Template fields | Max 8 | Reduces attack surface |
| Filter attributes | Max 3 | Identification needs 5–7; 3 is insufficient |
| Resolution (always-on) | 160×120 | Facial recognition impossible |
| Resolution (triggered) | 320×240 | Safe with anti-upscaling noise |
| Free text in Template | Banned | Prompt injection prevention |
| Person-specific in Filter | Banned | Anti-surveillance |
| User LoRA in pipeline | Banned | Supply chain security |
| PII confidence threshold | 95% | Better to skip an event than record PII |
| Cross-session linkage | Banned | No shared IDs between sessions |
| Spark frequency | Per Template | Construction: seconds. Retail: minutes. Science: milliseconds. |

## Security Tests (TS01–TS07)

| Test | What | Pass criteria |
|------|------|---------------|
| TS01 | Template Injection | 100 malicious Templates → all rejected |
| TS02 | Filter attribute limit | Filter with >3 attributes → rejected |
| TS03 | Filter targeting | Person-specific Filter → rejected |
| TS04 | Cross-session linkage | Search for shared IDs → 0 found |
| TS05 | Physical prompt | "Ignore instructions" sign in frame → quarantined |
| TS06 | Resolution bypass | 640×480 in always-on → auto-downscaled to 160×120 |
| TS07 | Adversarial PII | Face with adversarial patch → cascade detection blocks |

## Resolution Privacy

| Resolution | Face recognition | Recommendation |
|-----------|-----------------|----------------|
| 640×480+ | Reliable | Banned for always-on |
| 320×240 | Borderline | OK for triggered capture |
| 160×120 | Impossible | Recommended for always-on |

**Note:** Super-resolution models (ESRGAN) can upscale 4–8×. Anti-upscaling noise injection is applied to defeat recovery.

## Responsible Disclosure

No security system is absolute. We invite the community to:
- Report vulnerabilities: security@aisthos.dev or GitHub Security Advisories
- Propose new tests
- Challenge our limits (8 fields, 3 attributes, 160×120)
- Research new threat classes for Perception OS

All confirmed vulnerabilities will be published (after fix) at aisthos.dev/security.

**Security is not a competitive advantage. It is shared responsibility.**

## License

CC BY 4.0 — open standard.
