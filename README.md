# Homeant Homebrew Tap

Homebrew formulae maintained by [Homeant](https://github.com/homeant).

## Install asvc

Install directly; Homebrew adds the tap automatically:

```bash
brew install homeant/tap/asvc
```

Or add the tap first:

```bash
brew tap homeant/tap
brew trust --formula homeant/tap/asvc
brew install homeant/tap/asvc
```

Upgrade later with:

```bash
brew update
brew upgrade asvc
```

The `asvc` source, release notes, and platform archives live in
[homeant/agent-server-manager](https://github.com/homeant/agent-server-manager).

The tap checks that repository's latest GitHub Release every hour and updates the
formula from its published `SHA256SUMS`. Maintainers can also run the
`Update asvc formula` workflow manually.
