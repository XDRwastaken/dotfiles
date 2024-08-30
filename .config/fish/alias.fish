alias ls='ls --color=auto'
alias lsa='ls -lav --ignore=..'
alias lsah='ls -lav --ignore=.?*'
alias shutdown='poweroff'
alias home='cd ~/'
alias screenrec="cd $HOME/Videos/Recorded\ Videos/;  wl-screenrec --audio --audio-device alsa_output.pci-0000_00_1f.3.analog-stereo.monitor --low-power=off --filename $(date +%Y-%m-%d_%H-%m-%s).mp4; home" # the `alsa_output` might not be the same for you, run `pactl list short sources` to change it
alias cargo_run="clear; cargo run"
alias shards_run="clear; shards run --progress"
