⟨FindFull⟩ ⇐ •Import "fun.bqn"

nl ← @+10

IsDigit   ⇐ {⊑𝕩∊'0'+↕10}
IsVowel   ⇐ ∨´"aeiouAEIOU"⊸=
Join      ⇐ { 0=≠𝕩 ? 𝕩 ; (⊣∾𝕨∾⊢)´𝕩 }
Lower     ⇐ +⟜(32×1="A["⊸⍋) # from BQN Crate
Split     ⇐ { ⟨⟩⊸≢¨⊸/𝕩⊔˜1-˜((1++`)(≠𝕩)↑𝕨⍷𝕩)∧¬𝕨FindFull𝕩 }
Split2    ⇐ { 𝕩⊔˜1-˜((1++`)(≠𝕩)↑𝕨⍷𝕩)∧¬𝕨FindFull𝕩 } # TODO is this necessary
SplitMask ⇐ { ⟨⟩⊸≢¨⊸/𝕩⊔˜1-˜(¬∧1++`)𝕨 }
Replace   ⇐ { t‿r𝕊𝕩: r Join t Split2 𝕩 }
Upper     ⇐ -⟜(32×1="a{"⊸⍋) # from BQN Crate
IsLower   ⇐ ∨´('a'+↕26)⊸=
IsUpper   ⇐ ∨´('A'+↕26)⊸=
Trim      ⇐ (¬·(∧`⌾⌽∨∧`)' '=⊢)⊸/

# From Haskell
Lines   ⇐ nl⊸Split
Lines2  ⇐ nl‿nl⊸Split
Words   ⇐ ' '⊸Split
Ints    ⇐ •BQN¨Words
Unlines ⇐ nl⊸Join
Unwords ⇐ ' '⊸Join
