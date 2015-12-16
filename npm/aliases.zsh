# prettyjson -> pj
alias jcat=prettyjson
alias npmi=npm install --registry http://registry.npmjs.org
npmunused() {
  find . -path ./node_modules -prune -o -name "*.js" -exec egrep -ni $1 {} \;
}
