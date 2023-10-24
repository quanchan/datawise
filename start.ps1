# Run 'yarn'
Start-Process -FilePath "yarn" -Wait

# Open a new PowerShell window and run 'docker-compose up'
Start-Process -FilePath "powershell" -ArgumentList "-NoProfile -NoExit -Command "docker compose up""

# Run 'yarn db'
Start-Process -FilePath "yarn" -ArgumentList "db" -Wait

# Run 'yarn build'
Start-Process -FilePath "yarn" -ArgumentList "build" -Wait

# Run 'yarn start' (use -NoNewWindow to keep the log open)
Start-Process -FilePath "yarn" -ArgumentList "start" -NoNewWindow