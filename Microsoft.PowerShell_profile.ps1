# put in %USERPROFILE/WindowsPowershell
function commit {
    param([String] $message)
    git commit -a -m $message
}

function stat {
    git status
}

function push {
    git push
}

function gvim {
    param([String] $file)
    Start-Process "C:\Program Files (x86)\Vim\vim80\gvim.exe" $file
}
