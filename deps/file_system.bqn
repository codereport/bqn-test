ListRecursiveFiles ⇐ {
    l ← •file.List 𝕩     # files/directories
    P ← (𝕩∾"/")⊸∾        # prefix
    m ← 'd'=•file.Type¨P¨l # mask
    d ← l/˜m             # directories
    f ← l/˜¬m            # file
    (P¨f) ∾ ∾𝕊¨P¨d
}

ListRecursiveBQNFiles ⇐ (∨´1↓".bqn"⊸⍷)¨⊸/ListRecursiveFiles
