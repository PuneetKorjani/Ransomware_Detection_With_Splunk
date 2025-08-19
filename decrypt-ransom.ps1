# decrypt-sim-ransom.ps1 - SAFE demo (undoes simulate-ransom.ps1 renames)
$TestDir = "C:\Confidential_data"
if (-not (Test-Path $TestDir)) {
    Write-Output "Test folder not found: $TestDir"
    exit 1
}

Write-Host "SIM_DECRYPT_START - restoring files in $TestDir"

Get-ChildItem -Path $TestDir -File -Recurse | ForEach-Object {
    if ($_.Name -like "*.locked") {
        try {
            $old = $_.FullName
            $new = $old -replace "\.locked$",""
            Rename-Item -Path $old -NewName $new -ErrorAction Stop
            Start-Sleep -Milliseconds 50
        } catch {
            Write-Output "Failed restore: $old -> $_. Exception: $_"
        }
    }
}

Write-Host "SIM_DECRYPT_END - completed restore"
