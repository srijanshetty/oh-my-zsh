function server() {
    local port="${1:-8000}"
    open "http://localhost:${port}/"
    python -m SimpleHTTPServer "$port"
}

alias ack="ack-grep"
alias ip="curl ifconfig.me"
