oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\robbyrussell.omp.json" | Invoke-Expression

# PSReadLine Settings
Set-PSReadLineKeyHandler -Chord "Alt+w" -Function BackwardKillWord
Set-PSReadLineKeyHandler -Chord "Alt+e" -Function AcceptSuggestion
Set-PSReadLineKeyHandler -Chord "Alt+n" -Function ForwardWord

function cdsca-minr {
    Set-Location C:\Users\EDY\Desktop\W\dev\sectrend_engine\minr-2.5.5
}

function cdproj {
    Set-Location D:\proj
}

function cdaibom-minr {
    Set-Location C:\Users\EDY\Desktop\W\dev\aibom-minr
}

function cdaibom-scan {
    Set-Location C:\Users\EDY\Desktop\W\dev\aibom-scan
}

function openRecycleBin {
    Start-Process shell:RecycleBinFolder
}