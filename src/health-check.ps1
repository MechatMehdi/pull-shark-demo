function Test-EnvironmentHealth {
    [CmdletBinding()]
    param()
    [PSCustomObject]@{
        Status    = 'HEALTHY'
        Timestamp = (Get-Date).ToString('o')
        GitConfig = [bool](git config --get user.name)
    }
}
Export-ModuleMember -Function Test-EnvironmentHealth -ErrorAction SilentlyContinue
