param([string]$vagas)

$file = Join-Path $PSScriptRoot "index.html"
$content = Get-Content $file -Raw -Encoding UTF8
$content = $content -replace 'id="vagas-restantes">[0-9]+<\/span>', "id=`"vagas-restantes`">$vagas</span>"
Set-Content $file $content -Encoding UTF8 -NoNewline
Write-Host "index.html atualizado para $vagas vagas."
