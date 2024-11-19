
# ⟨Green, Red⟩ ⇐ •Import "/home/cph/bqn-color/color.bqn"

o ← "_temp"

Append ← { c ← •file.Chars o ⋄ o •file.Chars c∾𝕩 }

UnitTest       ⇐ { 𝕩 }
UnitTestActual ⇐ { 𝕩 ? Append "x" ; Append "." }
