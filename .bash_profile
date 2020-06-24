alias pruneemup="git branch | grep -v "master" | xargs git branch -D "
alias clearlaravel="php artisan cache:clear && php artisan route:cache && php artisan config:cache && php artisan view:clear"
alias iossim="/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/Contents/MacOS/Simulator"
alias iphonex="/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/Contents/MacOS/Simulator --CurrentDeviceUDID com.apple.CoreSimulator.SimDeviceType.iPhone-X"
alias burnitalldown='rm -rf node_modules && npm install'
alias cheatsheet='curl cht.sh'
alias pico8-'/Applications/PICO-8.app/Contents/MacOS/pico8'
alias love='/Applications/love.app/Contents/MacOS/love'
alias ngrok='~/ngrok'
alias crun='dotnet build && dotnet run'
alias gotopico='cd ~/Library/Application\ Support/pico-8/carts/'
alias disttoghpages='git subtree push --prefix dist origin gh-pages'
alias cleanup='brew update && brew upgrade && brew cleanup && npm -g outdated'
alias cda='composer dumpautoload'
alias newbuild='git add dist/ && git commit -m "new build"'
alias a='php artisan'
alias gbD='git branch -D'
alias omg='vim ~/.zshrc'
alias omgz='source ~/.zshrc'
alias f='git grep --heading --break --line-number'
alias sniff='php -d memory_limit=-1 ./vendor/bin/phpcs --standard=psr2'
alias pushdist='git subtree push --prefix dist origin gh-pages'
alias last-hotfix='git ls-remote --heads | grep -iE "\/hotfix-\d{4}$" | cut -d"/" -f3 | tail -n1'
alias gs='git status'
alias vmh='vue-migration-helper'
alias ga='git add'
alias phpserv='php -S localhost:8000 -t public'
alias gap='git add -p'
alias gcm='git commit -m'
alias gc='git checkout'
alias gcd='git checkout develop'
alias gcp='git cherry-pick'
alias tinker='composer dumpautoload && php artisan tinker'
alias gpush='git push'
alias gpull='git pull'
alias gpo='git push origin'
alias gpuo='git pull origin'
alias gph='git push origin HEAD'
alias gfetch='git fetch'
alias ..='cd ..'
# alias gf='gulp --front'
# alias GF='gulp --front'
alias g1='git log --oneline'
alias exot='exit'
alias gg='git grep'
alias splay='spotify play'
alias spause='spotify pause'
alias snext='spotify next'
alias sprev='spotify prev'
alias statme='stat -f%z dist/build-js13k.zip'
alias yrl='yarn run lint'
# alias rununittest='./vendor/bin/phpunit -c phpunit.xml'
# alias runspectest='./vendor/bin/phpspec -v run'
# alias runphpcstestapp='php -d memory_limit=-1 ./vendor/bin/phpcs -p --standard="./phpcs.xml" --extensions=php,inc,module,install app'
# alias runphpcstestlegacy='php -d memory_limit=-1 ./vendor/bin/phpcs -p --standard="./phpcs.xml" --extensions=php,inc,module,install -n --exclude="Squiz.ControlStructures.ControlSignature" legacy public/*.php public/includes public/modules public/themes public/sites/default public/sites/all/themes public/sites/all/modules'
expoclean() {
  watchman watch-del-all
  rm -rf $TMPDIR/react-*
  rm -rf $TMPDIR/haste-*
  rm -rf $TMPDIR/metro-*
  npm cache verify
  rm -rf node_modules 
  npm install
  npm audit fix
}
function fp() {
    f "path......$1"
}
function gbmerged() {
for branch in `comm -12  <(git branch --merged|awk '{print($1)}') <(git branch -r --merged|awk '{print($1)}'|awk -F \/ '{print($2)}')`;do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
}
function gbnotmerged() {
for branch in `comm -12  <(git branch --no-merged|awk '{print($1)}') <(git branch -r --no-merged|awk '{print($1)}'|awk -F \/ '{print($2)}')`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
}
