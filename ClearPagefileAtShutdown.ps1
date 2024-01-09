Clear-Host
Do{
    $result1=Get-ItemProperty -Path "HKLM:SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" | Select-Object -ExpandProperty ClearPageFileAtShutdown
    Write-Host "Current Value: $result1"
    IF($result1 -eq 1){
    }elseIF($result -eq 0){
        Set-ItemProperty -Path "HKLM:SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" -Name ClearPageFileAtShutdown -Value 1
    }
    $result2=Get-ItemProperty -Path "HKLM:SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" | Select-Object -ExpandProperty ClearPageFileAtShutdown
    $reply=Read-Host "New value: $result2"
}While(
    $status -eq 0
)