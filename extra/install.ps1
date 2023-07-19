# Prompt the user to confirm if they want to install the osuite repository into the current directory
$confirmation = Read-Host "Are you sure you want to install osuite into the current directory? (Y/N)"

if ($confirmation -eq "Y" -or $confirmation -eq "y" -or $confirmation -eq "") {
    # Clone the osuite repository from GitHub
    git clone https://github.com/rosidae/osuite.git

    # Change the current directory to the cloned repository
    Set-Location osuite

    # Install node packages
    npm install
}
else {
    Write-Host "Installation cancelled."
    exit
}