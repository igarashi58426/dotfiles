# gitのuserを設定
git config --global user.email "igarasi0719@gmail.com"      #GitHubアカウントのメールアドレスを入力
git config --global user.name "igarashi58426"           #GitHubアカウントのユーザ名を入力

# pullでコミットの競合が発生した際、rebaseを行う
git config --global pull.rebase true

# 設定結果を確認
git config --global user.email
git config --global user.name
