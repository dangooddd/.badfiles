# general .bashrc setup

if [ ! -f "$HOME"/.local/share/blesh/ble.sh ]; then
    cd /tmp || return
    curl -L https://github.com/akinomyoga/ble.sh/releases/download/nightly/ble-nightly.tar.xz | tar xJf -
    bash ble-nightly/ble.sh --install "$HOME"/.local/share
    rm -r ble-nightly
fi    

if [ -f "$HOME"/.local/share/blesh/ble.sh ]; then
    source "$HOME"/.local/share/blesh/ble.sh --noinputrc
fi

export PATH="$PATH":"$HOME"/.cargo/bin/

export EDITOR=/usr/bin/hx

export LESS="--tilde -S"

eval "$(starship init bash)"

eval "$(zoxide init bash)"
