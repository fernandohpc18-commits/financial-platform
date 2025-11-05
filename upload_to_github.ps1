Set-Location $PSScriptRoot
if (!(Test-Path .git)) {
    git init
    git remote add origin https://github.com/fernandohpc18-commits/financial-platform.git
    git branch -M main
}
git add -A
git commit -m "upload: full project with CI & Postgres" -q
git push -u origin main -f
