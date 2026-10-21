# インストールツール一覧
# btop dnsutils jq
# oxker 
# opencode pi-codeing-agent

# btop dnsutils jq
sudo apt update
sudo apt install -y btop dnsutils jq

# oxker
curl -s https://raw.githubusercontent.com/mrjackwills/oxker/main/install.sh | \
    sed -E 's/\bcurl\b/curl -s/g' | \
    bash
export_cmd='export PATH=$PATH:$HOME/.local/bin'
if cat ~/.bashrc | grep -q "$export_cmd"; then
  echo Skip registration
else
  echo set bashrc
  echo $export_cmd >> ~/.bashrc
fi
echo please exec: source ~/.bashrc

# pi (coding agent)
curl -fsSL https://pi.dev/install.sh -o /tmp/pi-install.sh
if command -v setsid >/dev/null 2>&1; then
  setsid -w sh /tmp/pi-install.sh < /dev/null
else
  printf 'warning: setsid not found; installer may prompt\n' >&2
  sh /tmp/pi-install.sh < /dev/null
fi
rm -f /tmp/pi-install.sh

# opencode (coding agent)
curl -fsSL https://opencode.ai/install | bash -s -- --no-modify-path
export PATH=$HOME/.opencode/bin:$PATH
export_cmd='export PATH=$HOME/.opencode/bin:$PATH'
if cat ~/.bashrc | grep -q "$export_cmd"; then
  echo Skip registration
else
  echo set bashrc
  echo $export_cmd >> ~/.bashrc
fi

