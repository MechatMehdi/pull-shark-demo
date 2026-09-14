# Simple automated smoke test
$result = & "$PSScriptRoot/../src/health-check.ps1"
if ($result.Status -ne 'HEALTHY') {
    throw "Health check validation failed!"
}
Write-Host "Diagnostic smoke test passed."
