$ErrorActionPreference = 'Stop'
Get-Command pdflatex -ErrorAction Stop | Out-Null
Push-Location $PSScriptRoot
try {
    New-Item -ItemType Directory -Force -Path 'build' | Out-Null
    # Trois passes stabilisent les renvois, les positions TikZ et la progression.
    for ($pass = 1; $pass -le 3; $pass++) {
        & pdflatex '-no-shell-escape' '-interaction=nonstopmode' '-halt-on-error' '-file-line-error' '-output-directory=build' 'presentation.tex'
        if ($LASTEXITCODE -ne 0) {
            throw "Compilation interrompue (passe $pass). Voir build/presentation.log."
        }
    }
    if (Select-String -Path 'build/presentation.log' -Pattern 'Overfull \\[hv]box|Missing character:' -Quiet) {
        throw 'Texte hors cadre ou caractere manquant : verifier build/presentation.log.'
    }
    Copy-Item -LiteralPath 'build/presentation.pdf' -Destination 'presentation.pdf' -Force
    Write-Host "PDF cree : $(Join-Path $PSScriptRoot 'presentation.pdf')"
}
finally {
    Pop-Location
}
