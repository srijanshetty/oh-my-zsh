function server() {
    local port="${1:-8000}"
    open "http://localhost:${port}/"
    python -m SimpleHTTPServer "$port"
}

alias ack="ack-grep"
alias ip="curl ifconfig.me"
# For chromium
export CHROME_DEVEL_SANDBOX="/usr/bin/chrome_sandbox"
alias chrome="chrome >&/dev/null &"
