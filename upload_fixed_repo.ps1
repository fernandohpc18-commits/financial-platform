# Caminhos
$repoPath = "C:\Users\Cooavil\Documents\financial-platform_final"
$zipPath = "$repoPath\financial-platform_fixed.zip"

# Remove zip antigo, se existir
if (Test-Path $zipPath) { Remove-Item $zipPath }

# Cria o zip com todos os arquivos
Compress-Archive -Path "$repoPath\*" -DestinationPath $zipPath -Force

# Repositório remoto
$repoUrl = "https://github.com/fernandohpc18-commits/financial-platform.git"

# Deleta tudo do repositório remoto local e recria
cd $repoPath
git init
git remote add origin $repoUrl
git checkout -b main
git add .
git commit -m "🚀 Reupload: versão corrigida com package-lock.json e build funcional"
git push -f origin main
