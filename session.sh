#doitlive prompt: sorin
#go get -u golang.org/x/vgo

cd $GOPATH/src/github.com/bketelsen/captainhook
rm go.mod
rm go.modverify
touch go.modverify
vgo build
cat go.mod
cat go.modverify

