<#
Prasert's profile
#>
$PSDefaultParameterValues['*:Encoding'] = 'utf8'
Set-PSReadLineOption -PredictionSource History

# chcp 65001

<# 
> start PowerShell (no admin)
Set-ExecutionPolicy RemoteSigned -scope currentuser
install-module get-childitemcolor -scope currentuser -allowclobber
Install-Module oh-my-posh -scope currentuser
Install-Module posh-git -scope currentuser

> download nerd font: https://www.nerdfonts.com/font-downloads
install *mono* font
#>
Import-Module Get-ChildItemColor
Set-Alias ll Get-ChildItem -option AllScope
Set-Alias lw Get-ChildItemColorFormatWide -option AllScope

Import-Module z

Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme negligible #prasert_wopain

<#
.SYNOPSIS
list by time ascending

.EXAMPLE
lt d*
#>
function lt($path) { 
  Get-ChildItem -Path $path | Sort-Object LastWriteTime -Descending 
}

<#
.SYNOPSIS
list directory

.EXAMPLE
ld p*
#>
function ld($path) { 
  Get-ChildItem -Path $path -Directory
}

function lr {
  <#
    .SYNOPSIS
      list with regex path
    .EXAMPLE
      lr '^[cp].*\.txt'
  #>
  param (
    [string]$pattern
  )
  Get-ChildItem | Where-Object { $_.name -match $pattern }
}

<#
.SYNOPSIS
show history from PSReadLine
#>
function hh {
  Get-Content (Get-PSReadLineOption).HistorySavePath
}

