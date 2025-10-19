---
id: V1-CH3
title: Creational Patterns
status: draft
last_review: 2025-10-19
tags: [creational, initialization, sharing]
---

# Creational Patterns

Intent
- How models, submodules, and parameters are created or initialized.

Patterns (to be expanded using the template)
1. Weight Tying — reuse learned representations between encoder/decoder.
2. Parameter Sharing — share layers or embeddings; when cloning vs referencing.
3. Initialization Patterns — Xavier, Kaiming, scaled residual init (ReZero/DeepNet).
4. Lazy Instantiation — defer module creation until shapes are known.
5. Meta‑Parameter Factories — hypernetwork‑based parameter creation.
6. Layer Reuse Pattern — repeat a block with shared or separate weights.

Design Considerations
- Stability, convergence speed, inductive bias encoded by initialization
- Memory and compute trade‑offs for sharing vs cloning

TODOs
- TODO: diagram(creational-map)
- TODO: examples(tied-embeddings, rezero)

