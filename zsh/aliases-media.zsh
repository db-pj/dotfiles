# Multimedia Commands

# DVD
alias vobcopy='vobcopy /media/dvd'
alias xine-dvd='xine dvd:/"`pwd`"'

# CD ripping and encoding
alias eac='wine ~/.wine/drive_c/Program\ Files/Exact\ Audio\ Copy/EAC.exe'
alias flacsync='flacsync -r'

# CD writing
alias cdrdao-flac-m='flac -f -d *.flac && mktoc -m *.cue > out.toc && cdrdao-write --multi out.toc && rm -rf *.wav *.toc wav-18;'
alias cdrdao-flac='flac -f -d *.flac && mktoc *.cue > out.toc && cdrdao-write out.toc && rm -rf *.wav *.toc wav-18;'
alias cdrdao-write='sudo cdrdao write --eject --device /dev/sr0'
alias cdrdao='sudo cdrdao'
alias mktoc='mktoc -c -18'

# Youtube
alias ytdl='youtube-dl -i --cookies ~/cookies.txt --format mp4 --mark-watched --output "%(uploader)s | %(title)s.%(ext)s"'
alias ytdlpl='ytdl --yes-playlist'
alias watchlist='ytdl --yes-playlist -- "https://www.youtube.com/playlist?list=WL"'
