function GoFetchDoggy($git_repo) {
  git fetch origin $git_repo refs/heads/main:upstream/main
}

Set-Location -Path "./bot"
GoFetchDoggy "https://github.com/OpenFurs/fursuit-detector-bot.git" 
Remove-Item .\tool
Remove-Item .\LICENSE
Push-Location -Path '..'
Pop-Location

# Set-Location -Path "./cli"
# GoFetchDoggy "develop"
# Push-Location

# Set-Location -Path "./web-app"
# GoFetchDoggy "master"
# Push-Location