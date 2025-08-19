# simulate-ransom.ps1 - SAFE demo (only touches C:\Confidential_data)
$TestDir = "C:\Confidential_data"
if (-not (Test-Path $TestDir)) {
    Write-Output "Test folder not found: $TestDir"
    exit 1
}
# mark start in event log
Write-Host "SIM_RANSOM_START - simulating mass rename in $TestDir"

Get-ChildItem -Path $TestDir -File -Recurse | ForEach-Object {
    try {
        $old = $_.FullName
        $new = "$old.locked"
        Rename-Item -Path $old -NewName $new -ErrorAction Stop
        Start-Sleep -Milliseconds 50
    } catch {
        Write-Output "Failed rename: $old -> $_. Exception: $_"
    }
}

Write-Host "SIM_RANSOM_END - completed mass rename"
