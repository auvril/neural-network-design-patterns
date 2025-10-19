# Glossary (Seed)

Adapter: A small trainable module inserted between layers to adjust representation flow.
Attention (Cross): Mechanism allowing one sequence (queries) to attend over another’s keys/values.
Bridge / Interface: Functional mapping connecting one module’s output to another’s input.
Conditioning: Modifying activations using external context (e.g., task, style) via scaling, bias, or gating.
FiLM: Feature‑wise linear modulation; scales and shifts features conditioned on context.
Fusion (Attention‑based): Combine multiple sources using attention‑derived weights.
Gating: Multiplicative control that regulates information flow.
Hypernetwork: Network that outputs weights or parameters for another network.
KV Cache: Stored keys/values reused in transformer decoding to reduce compute.
LayerNorm: Normalization across features per token; stabilizes sequence models.
LoRA: Low‑rank adaptation; parameter‑efficient additive weight updates.
Memory (External): Differentiable read/write storage integrated into a model.
Mixture of Experts (MoE): Architecture where inputs are routed to a subset of expert modules.
Normalization (Batch/Layer/Group/RMS): Standardization of activation statistics to improve stability.
Projection (Linear): Dimension‑matching mapping via affine transformation.
Prompt / Prefix: Learnable embeddings prepended as context to a module’s input.
Residual Connection: Additive shortcut preserving identity and facilitating gradient flow.
Riemannian Bridge: Map between latent manifolds (e.g., hyperbolic ↔ Euclidean) respecting geometry.
Routing: Selection of submodules or tokens for downstream processing.
Spectral Normalization: Constrains layer Lipschitz constant for stability.
Token Pruning: Selectively drop or coarsen tokens before heavy computation.
U‑Net: Encoder–decoder with lateral skip connections for precise localization.

TODO: Expand to ≥ 40 entries during Milestone 4.
