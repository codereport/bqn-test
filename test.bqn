o  ← "_temp"
nl ← @+10
Append   ← { c ← •file.Chars o ⋄ o •file.Chars c∾𝕩 }
AppendNl ← { c ← •file.Chars o ⋄ o •file.Chars c∾nl∾𝕩 }

UnitTest       ⇐ { 𝕩 }
UnitTestActual ⇐ { 𝕩 ? Append "x" ; Append "." }
ExecuteHalf    ⇐ { AppendNl •Fmt 𝕩 }
