⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

Rev ← { ⌽𝕩 }
Rot ← ⌽

UnitTest 1 = 1
UnitTest 1 < 2
UnitTest 2 > 1
UnitTest 2‿1‿0 ≡ Rev ↕3
UnitTest 1‿0 ≡ 1 Rot 0‿1
UnitTest 2 < 1 # fails
