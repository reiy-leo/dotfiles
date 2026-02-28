alias iina='open -a IINA'

alias preview='open -a preview'

# https://stackoverflow.com/questions/3102819/disable-same-origin-policy-in-chrome
alias edge_wo_cors='open -na "Microsoft Edge" --user-data-dir=/tmp/temporary-chrome-profile-dir --disable-web-security'

alias vscode='open -a "Visual Studio Code"'

alias wechat='nohup /Applications/WeChat.app/Contents/MacOS/WeChat &>/dev/null &'

alias microsoft-updater='echo "更新Microsoft Office" && open -a "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app"'

alias refresh-dns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; echo "DNS 缓存已刷新"'

# MacVim
export PATH="/Applications/MacVim.app/Contents/bin:$PATH"

# sublime text
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# catpaw
alias catpaw='/Applications/CatPawAI.app/Contents/Resources/app/bin/code'

# launchctl
alias launched="launchctl list | grep.p2 -v -e '^-' -e 'com.apple.' | awk 'NR > 1 {print \$3}' | sort"

# postgresql
echo 'export PATH="/usr/local/opt/postgresql@18/bin:$PATH"' >> ~/.zshrc
# 默认创建了一个数据库：initdb --locale=en_US.UTF-8 -E UTF-8 /usr/local/var/postgresql@18
export LDFLAGS="-L/usr/local/opt/postgresql@18/lib"
export CPPFLAGS="-I/usr/local/opt/postgresql@18/include"