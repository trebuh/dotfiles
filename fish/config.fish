# Golang developers might need this one
set -xg GOPATH $HOME/src/tools/go-packages

set -xg EDITOR nvim

fish_add_path $GOPATH/bin
fish_add_path $HOME/bin
fish_add_path $HOME/.local/bin
fish_add_path /opt/asdf-vm/bin
fish_add_path $HOME/.krew/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr vim "nvim"
    abbr k "kubectl"
    abbr kgp "kubectl get pods"
    abbr gst "git status -sb"
    abbr gsts "git status --show-stash"
    abbr gd "git diff"
    abbr gp "git push"
    abbr gpf "git push --force-with-lease"
    abbr ga "git add"
    abbr gco "git checkout"
    abbr gcob "git checkout -b"
    abbr gcmsg "git commit -S -m"
    abbr gcmsgn "git commit -nm"
end

source /opt/asdf-vm/asdf.fish
