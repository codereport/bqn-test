o  ← •wdpath∾"/_temp" # temporary output file
nl ← @+10
Append   ← { c ← •file.Chars o ⋄ o •file.Chars c∾𝕩 }
AppendNl ← { c ← •file.Chars o ⋄ o •file.Chars c∾nl∾nl∾𝕩 }

UnitTest       ⇐ { 𝕩 }
UnitTestActual ⇐ { 𝕩 ? Append "." ; Append "x" }
UnitFail       ⇐ { 𝕩 ⋄ Append "f" }
ExecuteHalf    ⇐ { AppendNl •Fmt 𝕩 }
