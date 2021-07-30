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
Install-Module z

> download nerd font: https://www.nerdfonts.com/font-downloads
install *mono* font
#>
Import-Module Get-ChildItemColor
Set-Alias ll Get-ChildItem -option AllScope
Set-Alias lw Get-ChildItemColorFormatWide -option AllScope

Import-Module z

Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme negligible
# Set-PoshPrompt -Theme powerlevel10k_lean_no_clock
# Set-PoshPrompt -Theme powerlevel10k_lean
# Set-PoshPrompt -Theme prasert_wopain

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

# if ($IsWindows) {
#   function l { cmd /c ls --color -F $args[0] $args[1] }
#   function ll {cmd /c ls --color -lF $args[0] $args[1]}
#   function ld { cmd /c ls --color -dF */ }
# }

if ($IsMacOS) {
  $env:path += '/Users/prasert/opt/miniconda3/bin:/Users/prasert/opt/miniconda3/condabin:/Users/prasert/bin:/usr/local/bin:/Users/prasert/miniconda3/bin:/usr/local/opt/libpq/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/VMware Fusion.app/Contents/Public'
  Remove-Alias rp -force
}
