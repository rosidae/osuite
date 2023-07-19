# Prompt the user to confirm if they want to install the osuite repository into the current directory
$confirmation = Read-Host "Are you sure you want to install osuite into the current directory? (Y/N)"

if ($confirmation -eq "N" -or $confirmation -eq "n") {
  Write-Host "Installation cancelled."
  exit
}

Out-Null

# Clone repo
git clone https://github.com/rosidae/osuite.git
Set-Location osuite

# Install node packages
npm install

# Run the env helper script.
node .\extra\env_helper.ts