# <p align="center">bqn-test</p>

<p align="center">
    <a href="https://github.com/codereport/bqn-test/issues" alt="contributions welcome">
        <img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat" /></a>
    <a href="https://lbesson.mit-license.org/" alt="MIT license">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" /></a>
    <a href="mlochbaum.github.io/BQN">
        <img src="https://img.shields.io/badge/BQN-0.7-ff69b4.svg"/></a>
    <a href="https://github.com/codereport?tab=followers" alt="GitHub followers">
        <img src="https://img.shields.io/github/followers/codereport.svg?style=social&label=Follow" /></a>
    <a href="https://GitHub.com/codereport/bqn-test/stargazers/" alt="GitHub stars">
        <img src="https://img.shields.io/github/stars/codereport/bqn-test.svg?style=social&label=Star" /></a>
    <a href="https://twitter.com/code_report" alt="Twitter">
        <img src="https://img.shields.io/twitter/follow/code_report.svg?style=social&label=@code_report" /></a>
</p>

A simple unit testing library for [BQN](https://mlochbaum.github.io/BQN) (inspired by [pytest](https://docs.pytest.org/en/stable/)).

### Usage

#### Running from the command line

Basic usage shown below:
```bash
bqn-test .    # this is quiet mode
bqn-test . -v # this is verbose mode
```

Note, after `git clone`-ing this repo, you will probably want to put the `bqn-test` script on your path:
```bash
export PATH=$PATH:/home/cph/bqn-test
```

#### Using in BQN files

Include the `test.bqn` and then make use of `UnitTest` for passing tests and `UnitFail` if you currently expect the test to fail. In order to get `currently:` results, use match `≡` and the expression preceeding the `≡` will be evaluated.

```bqn
⟨UnitTest, UnitFail⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

PlusOne ← { 𝕩+1 }

UnitTest (PlusOne 1) ≡ 2
UnitFail (PlusOne 1) ≡ 3
```

### Demo

![2024-11-2022-41-22-ezgif com-video-to-gif-converter (1)](https://github.com/user-attachments/assets/54c511fc-3d44-42b0-9e52-c45ba5018558)



