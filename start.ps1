# Open a new PowerShell window and run 'docker compose up' without waiting
Start-Process -FilePath "powershell" -ArgumentList "-NoProfile -NoExit -Command `"docker compose up`""

# Open a new PowerShell window and run 'yarn start' without waiting
Start-Process -FilePath "powershell" -ArgumentList "-NoProfile -NoExit -Command `"yarn start`""