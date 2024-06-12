# Dorothy User Configuration

This is my user configuration for the [Dorothy](https://github.com/bevry/dorothy) dotfile ecosystem.

## Installation

Pre-requisites:
```bash
sudo apt-get update
sudo apt-get install bash curl
```

Install Dorothy:
```bash
bash -ic "$(curl -fsSL https://dorothy.bevry.me/install)"
```

Verify installation:
```bash
dorothy theme
```

## foot configuration

In foot config set login-shell to yes as dorothy is only executed if shell is login. File `~/.config/foot/foot.ini`:
```ini
login-shell=yes
```

## Setup system

```bash
setup-system install
```

login with gh

```bash
gh auth login
```

setup all utils

```bash
setup-utils install
```
