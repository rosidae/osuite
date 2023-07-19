# Prompt the user to confirm if they want to install the osuite repository into the current directory
$confirmation = Read-Host "Are you sure you want to install osuite into the current directory? (Y/N)"

if ($confirmation -eq "N" -or $confirmation -eq "n") {
  Write-Host "Installation cancelled."
  exit
}
Clear-Host

# Clone repo
git clone https://github.com/rosidae/osuite.git
Clear-Host
Set-Location osuite

# Install node packages
npm install

# Run the env helper script.
ts-node-esm .\extra\env_helper.ts