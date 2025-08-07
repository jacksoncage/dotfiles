#!/usr/bin/env sh
# shellcheck disable=SC2034
# use inline `export VAR=...` statements, for fish compatibility`

export PATH=/usr/local/go/bin:$HOME/.bun/bin:$HOME/.local/bin:$HOME/bin:$HOME/.kubectx:$PATH

# Dorothy
alias d='dorothy'
export DOROTHY_THEME='starship'

# awslogin tool seenthis
export AWS_PROFILE=aws_mfa_session
source /home/love/code/seenthis/dev-tools/awslogin/aws_session_token.sh

# add fzf to shell
source /home/love/.config/fzf-completion.bash

# add mcfly to shell
eval "$(mcfly init bash)"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm use 20
source <(npm completion)

# debian specific aliases
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# VIM
alias vim="vim -u ~/.vimrc"
alias vi="vim -S ~/.vimrc"

# Shortcuts
alias g="git"
alias h="history"
alias gc=". /usr/local/bin/gitdate && git commit -v "

# Always enable colored `grep` output
alias grep='grep --color=auto '

# Enable aliases to be sudo’ed
alias sudo='sudo '

# fix TERM for ssh
alias ssh='TERM=xterm ssh'

# Get week number
alias week='date +%V'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# IP addresses
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="sudo ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ips="sudo ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Start dropbox fix
alias dropbox-fix-disk="/opt/dropbox-filesystem-fix/dropbox_start.py"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Canonical hex dump; some systems have this symlinked
command -v hd > /dev/null || alias hd="hexdump -C"

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | xclip -selection clipboard"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# vhosts
alias hosts='sudo vim /etc/hosts'

# copy working directory
alias cwd='pwd | tr -d "\r\n" | xclip -selection clipboard'

# copy file interactive
alias cp='cp -i'

# move file interactive
alias mv='mv -i'

# untar
alias untar='tar -xvf'

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/love_4096.pub | xclip -selection clipboard | echo '=> Public key copied to pasteboard.'"

# Create random pass
alias creat_pass="date +%s | sha256sum | base64 | head -c 32 ; echo"

alias home="cd ~"

# git
alias gti="git"
alias gi="git"
alias gtit="git"
alias g="git"
alias gitr="git"
alias gir="git"

# kubectl
source <(kubectl completion bash)
alias kc='kubectl'
complete -o default -F __start_kubectl kc

# Terraform
alias tf='terraform'

alias local-pre-commit="pre-commit run --config /home/love/sync/code/localtestconf/.pre-commit-config.yaml --all-files"
alias test-pre-commit="pre-commit run --config /home/love/sync/code/localtestconf/.pre-commit-config.yaml --all-files"

# Gcloud
alias gcloud-syb="gcloud config configurations activate syb && export GOOGLE_APPLICATION_CREDENTIALS=~/.config/gcloud/syb-admin.json"
alias gcloud-lc="gcloud config configurations activate lc && export GOOGLE_APPLICATION_CREDENTIALS=~/.config/gcloud/lc-admin.json"
alias gcloud-lm="gcloud config configurations activate default && export GOOGLE_APPLICATION_CREDENTIALS=~/.config/gcloud/lm-admin.json"
alias gcloud-insthink="gcloud config configurations activate insthink && export GOOGLE_APPLICATION_CREDENTIALS=~/.config/gcloud/insthink-admin.json"

# LeaseCloud
alias leasecloud-staging="gcloud beta container clusters get-credentials lease-cloud-staging-v2 --region europe-west1 --project mindful-faculty-157308"
alias leasecloud-test="gcloud beta container clusters get-credentials lease-cloud-test-v2 --region europe-west1 --project mindful-faculty-157308"
alias leasecloud-production="gcloud container clusters get-credentials leasecloud-prod-v3 --region europe-west1 --project lease-cloud-prod"
alias leasecloud-local="kubectl config use-context minikube"

alias leasecloud-wpshops='gcloud compute --project "montly-shops-159410" ssh --zone "europe-west1-b" "wp-shops"'
alias leasecloud-wpshops-staging='gcloud compute --project "montly-shops-159410" ssh --zone "europe-west1-b" "wp-shops-staging"'
alias leasecloud-content='gcloud container clusters get-credentials leasecloud-content --zone europe-west1-d --project montly-shops-159410'
alias leasecloud-oderland-ssh="ssh leasingc@isora.oderland.com"
alias leasecloud-touchretail-staging='gcloud beta compute --project "montly-shops-159410" ssh --zone "europe-west1-b" "touchretail-staging"'
alias leasecloud-touchretail='gcloud beta compute --project "montly-shops-159410" ssh --zone "europe-west1-b" "touchretail"'
alias leasecloud-wp-platform-staging="gcloud beta container clusters get-credentials wp-platform-staging --region europe-north1 --project leasecloud-wp-platform"
alias leasecloud-wp-platform-production="gcloud container clusters get-credentials wp-platform-production --region europe-north1 --project leasecloud-wp-platform"

# SYB
alias syb-staging-appcluster="gcloud container clusters get-credentials appcluster --zone us-central1-a --project syb-core-staging-auth; kubectl proxy"
alias syb-production-toolscluster="gcloud container clusters get-credentials toolscluster --zone us-central1-a --project syb-core-production-auth; kubectl proxy"
alias syb-production-appcluster="gcloud container clusters get-credentials appcluster --zone us-central1-a --project syb-core-production-auth; kubectl proxy"
alias syb-production-playandcontrol="export CLOUDSDK_CONTAINER_USE_V1_API_CLIENT=false && export CLOUDSDK_CONTAINER_USE_V1_API=false && gcloud beta container clusters get-credentials playandcontrol --region us-central1 --project syb-play-and-control; kubectl proxy"


# Jonis
alias k8s-jonis="ssh -4 -L 46001:127.0.0.1:46001 -N -f 192.168.85.10 && export KUBECONFIG=/home/love/code/dc1/jonis-cluster/.kube/config"
alias k8s-jonis-clean="export KUBECONFIG=/home/love/.kube/config && ps aux | grep  'ssh -L' | awk '{print $2}'"


# DC1
alias k8s-dc1="export KUBECONFIG=/home/love/sync/code/dc1/k8s/.kube/config"
alias k8s-dc1-clean="export KUBECONFIG=/home/love/.kube/config"
#alias k8s-token="kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | cut -f1 -d ' ') | grep -E '^token' | cut -f2 -d':' | tr -d '\t'"

# VPN pritunl DNS
alias leasecloud-vpn-staging="sudo sed -i '/nameserver 10.1/d' /etc/resolv.conf; sudo sed -i '/DO NOT EDIT/a nameserver 10.122.0.24' /etc/resolv.conf"
alias leasecloud-vpn-production="sudo sed -i '/nameserver 10.1/d' /etc/resolv.conf; sudo sed -i '/DO NOT EDIT/a nameserver 10.132.15.231' /etc/resolv.conf"
alias syb-vpn-staging="sudo sed -i '/nameserver 10.1/d' /etc/resolv.conf; sudo sed -i '/DO NOT EDIT/a nameserver 10.100.0.5' /etc/resolv.conf"
alias syb-vpn-production="sudo sed -i '/nameserver 10.1/d' /etc/resolv.conf; sudo sed -i '/DO NOT EDIT/a nameserver 10.104.0.11' /etc/resolv.conf"
alias reload-dns="sudo systemctl restart systemd-resolved"

# Insthink
alias insthink-combimix-prod='gcloud-insthink && gcloud beta compute --project "combimix-pim" ssh --zone "europe-west1-b" "combimix-app-production"'
alias insthink-combimix-stage='gcloud-insthink && gcloud beta compute --project "combimix-pim" ssh --zone "europe-west1-b" "combimix-app-staging"'
alias insthink-combimix-test='gcloud-insthink && gcloud beta compute --project "combimix-pim" ssh --zone "europe-west1-b" "combimix-app-test"'
alias insthink-pimcore-stage='gcloud-insthink && gcloud beta compute ssh --zone "europe-west1-b" "combimix-pimcore-staging" --project "combimix-pim"'
alias insthink-pimcore-prod='gcloud-insthink && gcloud beta compute --project "combimix-pim" ssh --zone "europe-west1-b" "combimix-pimcore-production"'
alias insthink-k8s-staging='gcloud-insthink && gcloud container clusters get-credentials staging --region europe-west1 --project combimix-pim'
alias insthink-k8s-production='gcloud-insthink && gcloud container clusters get-credentials production --region europe-west1 --project combimix-pim'


# Capacify
alias capacify-eu-west='gcloud-lm && gcloud container clusters get-credentials capacify-eu-west --zone europe-west1-b --project feisty-card-243313'

# Noteful
alias noteful-aws='aws eks --region eu-north-1 update-kubeconfig --name noteful'

# CareChain / Infrion
alias infrion-dev='gcloud container clusters get-credentials dev-m-05 --region europe-west1 --project lustrous-maxim-275718'
alias infrion-prod='gcloud-lm && gcloud container clusters get-credentials prod-m-03 --region europe-north1 --project lustrous-maxim-275718'


alias gha-val='for file in ./.github/workflows/*; do echo "==> action-validator $file..." && action-validator "$file"; done'
alias vpn-on="wg-quick up wg0 && systemctl enable wg-quick@wg0"
alias vpn-off="wg-quick down wg0 && systemctl disable wg-quick@wg0"
