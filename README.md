# Dorothy User Configuration

This is my user configuration for the [Dorothy](https://github.com/bevry/dorothy) dotfile ecosystem, optimized for Ubuntu Sway desktop environments.

## 🚀 Quick Start (Fresh Ubuntu Sway Install)

### 1. Prerequisites
```bash
sudo apt-get update
sudo apt-get install bash curl git
```

### 2. Clone This Configuration
```bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPO ~/.config/dorothy
```

### 3. Install Dorothy
```bash
bash -ic "$(curl -fsSL https://dorothy.bevry.me/install)"
```
When prompted:
- Select your preferred shell (bash/zsh/fish/etc)
- Point to this repository when asked for your dotfiles location

### 4. Setup Everything
```bash
# Setup custom repositories (VS Code, pgAdmin, etc)
setup-repositories

# Install all system packages and utilities
setup-system install
setup-utils install

# Authenticate with GitHub (optional)
gh auth login
```

## 📦 What's Included

### Desktop Environment
- **Sway** window manager with autotiling
- **Waybar** status bar
- **Foot** terminal emulator
- **Azote** wallpaper manager
- **Bluetuith** Bluetooth TUI manager

### Development Tools
- **VS Code** with extensions
- **Cursor** AI-powered code editor
- **Windsurf** AI code editor by Codeium
- **Neovim** text editor
- **Docker** & Docker Compose
- **Kubectl** for Kubernetes
- **Git** with LFS support
- **Keybase** for encrypted git repos & chat
- **Multiple Node.js versions** via NVM
- **Python** with pip packages
- **Direnv** for environment management

### Cloud & DevOps
- **AWS CLI** 
- **Google Cloud SDK** with GKE auth plugin
- **Tailscale** VPN
- **Vercel** CLI
- **pgAdmin** for PostgreSQL

### Productivity
- **Chrome** browser
- **Slack** messaging
- **Audacious** music player
- **7zip** & p7zip archive tools
- **Calibre** ebook manager

### AI & Coding Assistants
- **Claude Code** CLI
- **GitHub Copilot** CLI
- **OpenAI Codex**
- **MCP servers** for enhanced AI capabilities

## ⚙️ Configuration

### Terminal (Foot)
Ensure foot runs as login shell for Dorothy to work properly:

Edit `~/.config/foot/foot.ini`:
```ini
[main]
login-shell=yes
```

### Custom Commands
- Place public commands in `commands/`
- Place private commands in `commands.local/` (git-ignored)

### Custom Configuration
- Public config goes in `config/`
- Private config goes in `config.local/` (git-ignored)

## 📝 Customization

### Adding Packages
Edit `config/setup.bash` to add your own packages:

```bash
# APT packages
APT_INSTALL=(
    'your-package-here'
    # ...existing packages
)

# Node packages
NPM_INSTALL=(
    'your-npm-package'
    # ...existing packages
)

# Dorothy utilities
SETUP_UTILS=(
    'your-utility'
    # ...existing utilities
)
```

### Custom Repository Setup
The `setup-repositories` command handles:
- Tailscale repository
- Google Cloud repository
- VS Code repository
- pgAdmin repository

To add more, edit `commands/setup-repositories`.

## 🔧 Troubleshooting

### Dorothy commands not found
1. Ensure your terminal runs as login shell
2. Re-run `dorothy install` to reconfigure
3. Open a new terminal session

### Package installation fails
```bash
# Check Dorothy's environment
dorothy --help

# Manually run setup with verbose output
setup-system install --verbose
```

### Repository issues
```bash
# Re-run repository setup
setup-repositories

# Update package lists
sudo apt update
```

## 📚 Dorothy Commands

Essential Dorothy commands:
- `setup-system install` - Install all configured packages
- `setup-utils install` - Install all Dorothy utilities
- `setup-dns` - Configure encrypted DNS
- `setup-git` - Configure Git, SSH, GPG
- `secret` - Securely manage environment secrets
- `mount-helper` - Mount drives and network shares
- `edit` - Open files in preferred editor

Run any command with `--help` for more information.

## 🔗 Resources

- [Dorothy Documentation](https://github.com/bevry/dorothy)
- [Dorothy Commands Reference](https://github.com/bevry/dorothy/tree/master/commands)
- [Dorothy Discord Community](https://discord.gg/nQuXddV7VP)
