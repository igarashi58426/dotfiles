sudo apt update
sudo apt install -y  btop dnsutils jq
curl -s https://raw.githubusercontent.com/mrjackwills/oxker/main/install.sh | \
    sed -E 's/\bcurl\b/curl -s/g' | \
    bash
export PATH=$PATH:$HOME/.local/bin
export_cmd='export PATH=$PATH:$HOME/.local/bin'
if cat ~/.bashrc | grep -q "$export_cmd"; then
  echo Skip registration
else
  echo set bashrc
  echo $export_cmd >> ~/.bashrc
fi
echo please exec: source ~/.bashrc


