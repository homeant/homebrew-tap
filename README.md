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

When a maintainer pushes a `v*` tag to the source repository, its release workflow
builds and publishes the release first, then updates this formula from the
release's `SHA256SUMS`.
