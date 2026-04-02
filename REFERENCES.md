# AisthOS — References & Ecosystem

## 📚 Academic References

Papers and research that informed AisthOS architecture:

### Perception & Semantic Systems
| Paper | Authors | Venue | Why It Matters |
|-------|---------|-------|----------------|
| [Semantic Perception: Converting Sensory Observations to Abstractions](https://ieeexplore.ieee.org/document/6133260/) | Henson, Sheth, Thirunarayan | IEEE Internet Computing, 2012 | Pioneer work on sensor-to-abstraction pipeline |
| [Computing Perception from Sensor Data](https://www.researchgate.net/publication/255988784_Computing_perception_from_sensor_data) | Barnaghi, Ganz, Henson, Sheth | IEEE Sensors, 2012 | SAX patterns for sensor semantic extraction |
| [Semantic Sensor Network Ontology (SSN/SOSA)](https://www.w3.org/TR/vocab-ssn/) | W3C | W3C Recommendation, 2017 | Foundation for Template schema design |
| [MemOS: A Memory OS for AI System](https://arxiv.org/abs/2507.03724) | Li et al. | arXiv, 2025 | Complementary: MemOS manages knowledge, AisthOS generates it |

### Data Crisis & Model Collapse
| Paper | Authors | Venue | Why It Matters |
|-------|---------|-------|----------------|
| [AI models collapse when trained on recursively generated data](https://www.nature.com/articles/s41586-024-07566-y) | Shumailov et al. | Nature 631, 2024 | Proves irreversible degradation from synthetic data |
| [Strong Model Collapse](https://arxiv.org/abs/2410.04840) | Dohmatob et al. | ICLR Spotlight, 2025 | Even mixed real+synthetic data doesn't prevent collapse |
| [Will we run out of data?](https://epoch.ai/blog/will-we-run-out-of-data-limits-of-llm-scaling-based-on-human-generated-data) | Villalobos et al. | Epoch AI, 2024 | High-quality text exhausted between 2026–2032 |

### Privacy & Re-identification
| Paper | Authors | Venue | Why It Matters |
|-------|---------|-------|----------------|
| [Unique in the Crowd](https://www.nature.com/articles/srep01376) | de Montjoye et al. | Scientific Reports, 2013 | 4 spatiotemporal points = 95% re-identification |
| [Estimating the success of re-identifications](https://www.nature.com/articles/s41467-019-10933-3) | Rocher, Hendrickx, de Montjoye | Nature Communications, 2019 | 15 attributes = 99.98% re-identification |
| [Constitutional AI: Harmlessness from AI Feedback](https://arxiv.org/abs/2212.08073) | Bai et al. | Anthropic, arXiv, 2022 | Foundation for Constitutional Layer design |

### Edge AI & Perception Hardware
| Paper | Authors | Venue | Why It Matters |
|-------|---------|-------|----------------|
| [TinyissimoYOLO: Quantized Sub-mW Object Detection on Microcontrollers](https://arxiv.org/abs/2311.01057) | Moosmann et al. | ECCV Workshops, 2024 | 18 FPS at 62.9 mW — proves edge perception on battery devices |
| [Cosmos World Foundation Model Platform](https://arxiv.org/abs/2501.03575) | Agarwal et al. | NVIDIA, arXiv, 2025 | 20M hours of real-world data — validates real data value |
| [Open X-Embodiment: Robotic Learning Datasets and RT-X Models](https://arxiv.org/abs/2310.08864) | Open X-Embodiment Collaboration | ICRA, 2024 | 1M+ robot trajectories — demonstrates multimodal data scale |
| [RT-2: Vision-Language-Action Models](https://arxiv.org/abs/2307.15818) | Zitkovich et al. | CoRL, 2023 | VLA models — bridge between perception and action |

### Scientific Discovery with AI
| Paper | Authors | Venue | Why It Matters |
|-------|---------|-------|----------------|
| [AI-Newton: Autonomous Discovery of Physics Laws](https://arxiv.org/abs/2504.01538) | Fang et al. | arXiv, 2025 | Discovers F=ma without prior knowledge — AisthOS = perception layer for such systems |
| [AI Feynman: Symbolic Regression](https://www.science.org/doi/10.1126/sciadv.aay2631) | Udrescu, Tegmark | Science Advances, 2019 | 100/100 Feynman equations — proves AI can discover physics |
| [SciNet: Discovering Physical Concepts](https://physics.aps.org/featured-article-pdf/10.1103/PhysRevLett.124.010508) | Iten et al. | Physical Review Letters, 2020 | Learned conservation of momentum from collision data |

### Hybrid Edge-Cloud Economics
| Paper | Authors | Venue | Why It Matters |
|-------|---------|-------|----------------|
| [Hybrid Edge-Cloud Architecture Cost Analysis](https://arxiv.org/abs/2501.14823v2) | Alamouti | arXiv, 2025 | 80% edge / 20% cloud = >75% cost savings |

---

## 🔗 Works With

AisthOS is designed to integrate with these projects and platforms:

### Local AI
| Project | Integration | Status |
|---------|------------|--------|
| [Ollama](https://ollama.com) | Local LLM backend: `ollama run aisthos` | Planned |
| [Phi-4-mini](https://huggingface.co/microsoft/phi-4-mini) | Default local model (MIT, 3.8B params) | Planned |
| [HuggingFace](https://huggingface.co) | Model cards, emotion models, LoRA adapters | Planned |

### Smart Home & IoT
| Project | Integration | Status |
|---------|------------|--------|
| [Home Assistant](https://www.home-assistant.io) | Wyoming Protocol voice satellite, HA Add-on | Planned |
| [ESPHome](https://esphome.io) | ESP32-S3 firmware compatibility | Planned |
| [Wyoming Protocol](https://github.com/OHF-Voice/wyoming) | STT, TTS, wake word, satellite mode | Planned |

### Edge AI Hardware
| Hardware | Chip | Tested | Performance |
|----------|------|--------|-------------|
| [Raspberry Pi 5 + AI Kit](https://www.raspberrypi.com/products/ai-kit/) | Hailo-8L (13 TOPS) | Benchmarked | ~62-120 FPS (YOLOv8n) |
| [GAP9 (Greenwaves)](https://greenwaves-technologies.com/gap9/) | RISC-V + NE16 | Benchmarked | 18 FPS @ 62.9 mW |
| [Ambarella CV72S](https://www.ambarella.com) | 5nm, 6 eTOPS | Benchmarked | 4×5MP + AI @ <3W |
| [Google Coral](https://coral.ai) | Edge TPU (4 TOPS) | Benchmarked | MobileNet V2 ~400 FPS |
| [Qualcomm AR1+ Gen 1](https://www.qualcomm.com/xr-vr-ar/products/ar-series/snapdragon-ar1-gen-1-platform) | Smart glasses SoC | Referenced | Llama-3.2 1B on-device |

### Developer Tools & Protocols
| Project | Integration | Status |
|---------|------------|--------|
| [MCP (Model Context Protocol)](https://github.com/modelcontextprotocol) | AisthOS MCP Server for Claude/LangChain | Planned |
| [Docker](https://www.docker.com) | `docker-compose up` for Windows/Linux | Planned |
| [Xiaozhi ESP32](https://github.com/78/xiaozhi-esp32) | Compatibility layer (MIT, MCP-based) | Planned |

### Orphaned Robot Communities
| Project | Integration | Status |
|---------|------------|--------|
| [OpenMoxie](https://github.com/jbeghtol/openmoxie) | HAL driver + skill pack + MQTT bridge | Planned |
| [wire-pod (Vector)](https://github.com/kercre123/wire-pod) | Architectural reference | — |

---

## ⚖️ Standards & Regulations

AisthOS Inside™ is designed to comply with:

### Privacy & Data Protection
| Jurisdiction | Law/Standard | How AisthOS Complies |
|-------------|-------------|---------------------|
| 🇷🇺 Russia | [Art. 138.1 Criminal Code (FZ-308, 2019)](https://www.consultant.ru/document/cons_doc_LAW_10699/0a8607713c152645dfeebca43023e52d36b6bb0a/) | Visible indicator + no covert capability |
| 🇷🇺 Russia | [152-FZ (Personal Data)](http://www.consultant.ru/document/cons_doc_LAW_61801/) | Raw data never stored; Sparks contain no PII |
| 🇪🇺 EU | [GDPR Art. 5(1)(c)](https://gdpr-info.eu/art-5-gdpr/) | Data minimization by architecture |
| 🇪🇺 EU | [EU AI Act (Aug 2026)](https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai) | Open audit, PII validation, conformity |
| 🇪🇺 EU | [CJEU C-422/24 (Dec 2025)](https://www.lewissilkin.com/insights/2025/12/24/a-cjeu-holiday-gift-ending-the-gdpr-articles-13-vs-14-tug-of-war-for-body-worn-c-102lz37) | Body-worn camera transparency obligations |
| 🇺🇸 USA | [Illinois BIPA](https://www.ilga.gov/legislation/ilcs/ilcs3.asp?ActID=3004) | No biometric data in Sparks |
| 🇺🇸 USA | [California SB 1130 (proposed, 2026)](https://leginfo.legislature.ca.gov/faces/billVersionsCompareClient.xhtml?bill_id=202520260SB1130) | No covert recording capability |

### Covert Surveillance Device Laws
| Jurisdiction | Law/Standard | How AisthOS Complies |
|-------------|-------------|---------------------|
| 🇷🇺 Russia | [Art. 138.1 Criminal Code — Spy Devices](https://www.consultant.ru/document/cons_doc_LAW_10699/0a8607713c152645dfeebca43023e52d36b6bb0a/) | P5: tamper-resistant visible indicator; P6: no covert capability. Device is NOT a "special technical means for covert information gathering" per FZ-308 (2019) |
| 🇪🇺 EU | [Directive 2002/58/EC (ePrivacy)](https://eur-lex.europa.eu/legal-content/EN/ALL/?uri=CELEX%3A32002L0058) | P1: no raw data storage; P5: transparent operation |
| 🇺🇸 USA | [Federal Wiretap Act (18 U.S.C. § 2511)](https://www.law.cornell.edu/uscode/text/18/2511) | P5+P6: no covert audio/video recording capability |
| 🇺🇸 USA | [24 state hidden camera laws](https://battenhomesecurity.com/briefs/hidden-camera-laws-by-state/) | P5: visible indicator; P6: no hidden recording mode |
| 🌐 Global | Various wiretapping / eavesdropping laws | P1+P2+P5+P6: architecturally impossible to classify as surveillance device |

### Children's Safety & Minors Protection

> **Key insight:** Photos/videos of children require parental consent for any commercial use (COPPA, GDPR Art. 8, FZ-436). Sparks contain only anonymized semantic metadata ("child aged 3-5 raised hand to 45°") — not identifiable data. This enables privacy-safe research in previously inaccessible domains: pediatric behavior analysis, educational engagement, child safety monitoring, developmental studies.

| Jurisdiction | Law/Standard | How AisthOS Complies |
|-------------|-------------|---------------------|
| 🇺🇸 USA | [COPPA 2.0 / COPPA 2025 (Children's Online Privacy)](https://www.ftc.gov/legal-library/browse/rules/childrens-online-privacy-protection-rule-coppa) | P3: no PII collection from minors; Constitutional Layer includes CHILD_SAFE mode with elevated PII thresholds. Sparks contain no identifiable child data. |
| 🇪🇺 EU | [GDPR Art. 8 — Child Consent](https://gdpr-info.eu/art-8-gdpr/) | P4: parental control over Templates/Filters. Sparks = anonymized metadata, not images — outside scope of image-based PII regulations. |
| 🇷🇺 Russia | [FZ-436 — Protection of Children from Harmful Information](http://www.consultant.ru/document/cons_doc_LAW_108808/) | Constitutional Layer content filtering. No raw photos/video of children stored or transmitted. |
| 🇨🇳 China | [PIPL Art. 28 — Minors' Personal Information](http://www.npc.gov.cn/npc/c30834/202108/a8c4e3672c74491a80b53a172bb753fe.shtml) | Separate consent for minor data; stricter PII thresholds. Spark architecture inherently satisfies data minimization. |
| 🌐 Global | [UNICEF AI for Children Guidelines](https://www.unicef.org/globalinsight/reports/policy-guidance-ai-children) | Constitutional Layer aligned with UNICEF 9 requirements for child-safe AI. |

### Medical Privacy & Sensitive Data

> **Key insight:** Medical images (dermatology, post-surgical wounds, intimate areas) are among the most sensitive categories of personal data. Patients avoid telemedicine consultations requiring intimate photos; clinics face severe liability for storage and breaches. AisthOS Sparks contain only structured medical metadata ("redness 3×4 cm, zone: left forearm, texture: uneven, color: RGB range") — never raw images. This enables remote medical consultation, dermatological screening, rehabilitation monitoring, and clinical research without storing or transmitting sensitive imagery.

| Jurisdiction | Law/Standard | How AisthOS Complies |
|-------------|-------------|---------------------|
| 🇺🇸 USA | [HIPAA (Health Insurance Portability and Accountability Act)](https://www.hhs.gov/hipaa/index.html) | P1: no raw medical images stored; P2: only Sparks transmitted. Sparks = structured metadata, not Protected Health Information (PHI) images. |
| 🇪🇺 EU | [GDPR Art. 9 — Special Categories (health data)](https://gdpr-info.eu/art-9-gdpr/) | P3: no biometric/health imagery in Sparks. Semantic medical descriptors fall outside "special category" image restrictions. |
| 🇷🇺 Russia | [FZ-323 — Health Protection (medical confidentiality)](http://www.consultant.ru/document/cons_doc_LAW_121895/) | P1+P2: no patient photos stored or transmitted. Sparks preserve medical utility without compromising patient dignity. |
| 🌐 Global | [WMA Declaration of Helsinki (medical research ethics)](https://www.wma.net/policies-post/wma-declaration-of-helsinki-ethical-principles-for-medical-research-involving-human-subjects/) | Spark architecture enables medical research data collection with minimal privacy intrusion. |

### Spark Transparency (User Right to Inspect)

> **Principle P4 extension:** Every user can view the exact contents of any Spark before and after it is transmitted. A Spark is human-readable structured text (e.g., `{"pose": "right_hand_raised_45deg", "emotion": "surprise", "timestamp": "2026-04-02T14:xx"}`), NOT a photo or video. The user can verify at any moment that no raw image data is included. This right is non-negotiable and cannot be disabled by any Template, Filter, or system configuration.

### AI Standards
| Standard | Relevance |
|----------|-----------|
| [ISO/IEC 42001:2023](https://www.iso.org/standard/81230.html) | AI management system — AisthOS Inside™ aligns |
| [ГОСТ Р ИСО/МЭК 42001-2024](https://www.garant.ru) | Russian adoption of ISO 42001 (in force Jan 2025) |
| [W3C SSN/SOSA](https://www.w3.org/TR/vocab-ssn/) | Semantic sensor ontology — Template schema basis |

### Energy & Infrastructure
| Source | Data Point |
|--------|-----------|
| [IEA: Energy and AI](https://www.iea.org/reports/energy-and-ai/energy-demand-from-ai) | Datacenters: 415 TWh (2024) → 945 TWh by 2030 |
| [McKinsey: $6.7T by 2030](https://www.mckinsey.com/industries/technology-media-and-telecommunications/our-insights/the-cost-of-compute-a-7-trillion-dollar-race-to-scale-data-centers) | Investment needed for datacenter infrastructure |
| [PJM: 6 GW shortfall](https://fortune.com/2026/03/18/power-grids-snags-electricity-limits-data-centers/) | Largest US grid operator projects deficit by 2027 |

---

## 📄 AisthOS Documents

| Document | Description |
|----------|------------|
| [AisthOS Inside™ Certification Standards v1.0](certification/) | Privacy certification for perception devices (DRAFT) |
| [Security Annex](certification/security-annex/) | 7 threat vectors, 8 security tests, quantitative limits |
| [arXiv Paper](paper/) | "AisthOS: A Perception Operating System" |

---

*Last updated: 2026-04-02*
*License: CC BY 4.0*
