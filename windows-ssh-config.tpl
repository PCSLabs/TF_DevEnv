add-content -path c:/users/mauri/.ssh/config -value @'

Host ${hostname}
    HostName ${hostname}
    User ${user}
    Identityfile ${identityfile}
'@
