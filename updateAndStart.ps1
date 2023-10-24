# Pull new changes from git
Start-Process -FilePath "git" -ArgumentList "pull" -Wait

# Run 'yarn'
Start-Process -FilePath "yarn" -Wait

# Open a new PowerShell window and run 'docker compose up' without waiting
Start-Process -FilePath "powershell" -ArgumentList "-NoProfile -NoExit -Command `"docker compose up`""

# Run 'yarn build'
Start-Process -FilePath "yarn" -ArgumentList "build" -Wait -NoNewWindow

# Open a new PowerShell window and run 'yarn start' without waiting
Start-Process -FilePath "powershell" -ArgumentList "-NoProfile -NoExit -Command `"yarn start`""
