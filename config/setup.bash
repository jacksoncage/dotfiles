#!/usr/bin/env bash
# shellcheck disable=SC2034
# do not use `export` keyword in this file

# load the dorothy defaults
source "$DOROTHY/config/setup.bash"

# note on youtube-dl
# brew maintains it actively, and also will assist with dependencies
# however, ubuntu is slow to maintain, so install via pip instead
# http://ytdl-org.github.io/youtube-dl/download.html

APK_INSTALL=()

# APT_UNINSTALL=(
# 	aisleriot
# 	gnome-mahjongg
# 	gnome-mines
# 	gnome-sudoku
# 	gnomine
# 	imagemagick
# 	"libreoffice*"
# 	rhythmbox
# 	shotwell
# 	thunderbird
# )

# software-properties-common
# 	`atomicparsley` is a youtube-dl dependency
APT_INSTALL=(
	'7zip'
	'apache2-utils'
	'audacious'
	'autotiling'
	'awscli'
	'azote'
	'bluetuith'
	'code'
	'direnv'
	'docker-compose'
	'foot'
	'git-lfs'
	'gnome-keyring'
	'google-cloud-cli'
	'google-cloud-cli-gke-gcloud-auth-plugin'
	'libnotify-bin'
	'libxcb-cursor0'
	'nautilus-dropbox'
	'neovim'
	'p7zip-full'
	'pgadmin4'
	'python3-pip'
	'sway'
	'swayidle'
	'swaylock'
	'swayr'
	'tailscale'
	'traceroute'
	'ubuntu-sway-standard'
	'waybar'
	'whois'
)

# Snap
# https://code.visualstudio.com/docs/setup/linux
# if [[ "$(get-arch)" == 'x'* ]]; then
SNAP_INSTALL=()

# Go
GO_LINTING_INSTALL='no'
GO_INSTALL=()
if is-mac; then
	GO_LINTING_INSTALL='yes'
	GO_INSTALL+=(
		'changkun.de/x/rmtrash'
		# 'github.com/cloudflare/utahfs/cmd/utahfs-client'
	)
fi

# macOS apps / mas
# https://github.com/mas-cli/mas
# '430798174' 'HazeOver'
# '441258766' 'Magnet'
# '441258766' 'Magnet'
# '497799835' 'Xcode'
# '497799835' 'XCode'
# '639968404' 'Parcel'
# '803453959' 'Slack'
# '931134707' 'Wire'
# '937984704' 'Amphetamine'
MAS_INSTALL=(
	'420212497' 'Byword'
	'1484348796' 'Endel'
	'1472777122' 'Honey'
	'409183694' 'Keynote'
	'405399194' 'Kindle'
	'409203825' 'Numbers'
	'409201541' 'Pages'
)

# Homebrew
HOMEBREW_ENCODING_INSTALL=yes
HOMEBREW_UNINSTALL=(
	'imagemagick'
	'podman'
	'tmux'
)
HOMEBREW_FORMULAS=(
	'git-extras'
	'terminal-notifier'
	'watch'
	'watchman'
)
HOMEBREW_SLOW_FORMULAS=(
	'shellcheck'
)
HOMEBREW_CASKS=(
	'adguard'
	'audio-hijack'
	'loopback'
	'soundsource'
	'calibre'
	'spotify'
	'zoom'
)
HOMEBREW_FONTS=(
	'font-cantarell'
	'font-cascadia-code'
	'font-dejavu'
	'font-fira-code'
	'font-fira-mono'
	'font-hack'
	'font-hasklig'
	'font-ibm-plex'
	'font-inter'
	'font-iosevka'
	'font-jetbrains-mono'
	'font-lato'
	'font-maven-pro'
	'font-monaspace'
	'font-monoid'
	'font-montserrat'
	'font-open-sans'
	'font-oxygen-mono'
	'font-oxygen'
	'font-pt-mono'
	'font-roboto-mono'
	'font-roboto'
	'font-source-code-pro'
	'font-ubuntu-mono'
	'font-ubuntu'
	'font-victor-mono'
)

# Ruby
GEM_INSTALL=()

# Python
# @todo swap PyPDF2 fro one of the following
# > https://stackoverflow.com/a/63557138/130638
# - https://github.com/pymupdf/PyMuPDF
# - https://github.com/pikepdf/pikepdf
# - https://github.com/pdfminer/pdfminer.six
PIPX_INSTALL=(
	'katcr'
	'poetry'
	'stig'
	'youtube_dl'
  'pre-commit'
)
#PYTHON3_PIP_INSTALL=(
#  'pre-commit'
#)
# PYTHON2_PIP_INSTALL=('PyPDF2')

# Node.js
# SERVERS
# browser-refresh
# live-server
# DATABASE
# fauna-shell
# ECOSYSTEMS
# "@stencil/core"
# @cloudflare/wrangler
# apollo
# ember-cli
# firebase-tools
# ionic
# lasso-cli
# marko-cli
# marko-starter
# netlify-cli
# now
# TOOLING
# tldr # replaced with tealdeer
# typescript@next
# CRYPTOCURRENCY
# cartera
# coinmon
NPM_INSTALL=(
	'@anthropic-ai/claude-code'
	'@githubnext/github-copilot-cli'
	'@modelcontextprotocol/server-filesystem'
	'@modelcontextprotocol/server-postgres'
	'@openai/codex'
	'@seenthis-ab/salming-mcp'
	'boundation'
	'eslint'
	'json'
	'opencode-ai'
	'repomix'
	'serve'
	'typescript'
	'vercel'
)
NODE_VERSIONS=(
	8
	10
	12
	14
	16
	18
	20
	21
  22
)

# Rust / Cargo / Crates.io
# --locked: Require Cargo.lock is up to date
# as rust packages can be supported by many package managers, and as cargo requires downloading every dependency, most rust packages are better installed via SETUP_UTILS
CARGO_INSTALL=()

# utilities
# setup-util-*
# 'warp' - caused too many issues, using adguard mac app instead
SETUP_UTILS=(
	1password-cli
	aria2
	bandwhich
	bash
	bat
	bottom
	calibre
	chrome
	curl
	cursor
	delta
	deno
	docker
	fish
	fzf
	git
	gocryptfs
	gpg
	jq
	keybase
	kubectl
	mcfly
	nano
	netstat
	nordvpn
	nu
	obs
	openvpn
	prettier
	python
	ripgrep
	screen
	sd
	shellcheck
	slack
	syncthing
	tealdeer
	teip
	tree
	unziptar
	vim
	vnc
	vscode
	wget
	windsurf
)
