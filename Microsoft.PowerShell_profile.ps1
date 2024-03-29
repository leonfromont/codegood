# put in %USERPROFILE/WindowsPowershell (or run install.ps1)

Set-PSReadlineOption -EditMode v
Set-PSReadLineOption -ViModeIndicator None

import-module posh-git

function gcam {
    param([String] $message)
    git commit -a -m $message
}

function stat {
    git status
}

function push {
    git push
}

function gdc {
    git add --all
    git commit -a -m date
}

# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_character_encoding?view=powershell-7.2
$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}


function cb {
    Set-Location $env:OUTPUT_DIR
}

# TODO: this one could be an alias?
function cm {
    ChronoMoth.exe
}

function cs {
    Set-Location W:\src
}

function cdd {
    Set-Location W:\data
}