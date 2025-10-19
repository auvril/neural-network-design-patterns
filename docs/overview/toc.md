# Table of Contents (Initial)

Note: This TOC reflects the ideation for a GoF‑style treatise. For this phase, we focus on Volume I (Ch. 1–3) with stubs created.

- Preface (note only)
  - Purpose, audience, how to read this book
  - Credits and historical context

## Volume I — Foundations

1. Principles of Neural Architecture Design
   - Why patterns? Modularity, composition, gradient flow
   - Core principles: Gradient Flow Preservation, Representational Alignment, Differentiable Control, Parameter Efficiency, Manifold Consistency, Hierarchical Reuse
   - Historical thread: from CNN/RNN to modern modular systems
   - Anti‑principles: coupling, drift, over‑flexibility
1. Anatomy of a Neural Design Pattern
   - Pattern template and semantics (Intent → Structure → Participants → Consequences)
   - Notation (graph‑UML for PyTorch, equations)
   - Relationships (composition, specialization, substitution)
   - Example walk‑through using Residual Bridge
1. Creational Patterns
   - Weight Tying, Parameter Sharing, Initialization, Meta‑Parameter Factories, Lazy Instantiation, Layer Reuse
   - Trade‑offs, examples, implementation notes

## Volume II — Structural & Interface (outline only)

1. Structural Composition Patterns (Sequential, Residual, Bottleneck, U‑Net, Inception, FPN, Recursive)
1. Interface & Adapter Patterns (Projection, Bottleneck, FiLM, Cross‑Attention, Fusion, Routing, Residual Bridge, Hypernetwork, Riemannian, Prompt/Prefix)
1. Normalization & Calibration Patterns (BatchNorm, LayerNorm, GroupNorm, RMSNorm, SpectralNorm, DomainNorm)
1. Fusion & Cross‑Modal Patterns (Concat+Proj, Additive, Gated, Attention Fusion, Bilinear, Hierarchical Merge)

## Volume III — Behavioral & Dynamic (outline only)

1. Control & Flow Patterns (Gating, Conditional Computation, Switching/Routing, Recurrent Loop, Residual Scaling, Adaptive Depth)
1. Memory & Reasoning Patterns (Recurrent State, External Memory, KV Cache, Attention‑over‑Memory, Graph Reasoner, Controller–Core, Reflective Loop)
1. Optimization & Learning Dynamics Patterns (LR schedulers, checkpointing, freezing, contrastive alignment, RLHF, regularization)

## Volume IV — Representation & Reasoning (outline only)

1. Representation Manifold Patterns (Euclidean, Product, Hyperbolic, Spherical, Algebraic, Symbolic)
1. Meta‑Learning & Adaptation Patterns (Hypernetwork, Adapter Stack, Prefix/Prompt, LoRA, Meta‑Init)
1. Symbolic & Neuro‑Cognitive Patterns (Entity/Slot, Relation Composition, Hierarchical Concept Graphs, Rule Induction, Meta‑Reflective)

## Volume V — System & Meta (outline only)

1. Integration & Composition (Ensembles, RAG, Plug‑Ins, Controller–Worker, Mixed Architectures, Neural Compiler)
1. Optimization System Patterns (Curriculum, Data Mixtures, Feedback Loops, Eval Hooks)
1. Anti‑Patterns & Refactorings (Overfitted Adapter, Information Choking, Semantic Drift, Gradient Collapse, Overconnected Mesh, Monolithic Coupling, Underconstrained Dynamics)
1. Principles Revisited

## Appendices (outline only)

A. Formal Foundations (graph algebra, category theory, geometry)
B. Implementation Compendium (PyTorch templates, DSL snippets)
C. Historical Timeline
D. Glossary & Pattern Index
