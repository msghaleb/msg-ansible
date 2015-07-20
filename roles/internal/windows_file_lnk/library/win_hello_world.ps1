#!powershell

# WANT_JSON
# POWERSHELL_COMMON

$params = Parse-Args $args;

$result = New-Object psobject @{
    helloworld = New-Object psobject
    changed = $false
}

If ($params.myparm) {
    $item_myparm = $params.myparm
}
Else {
    Fail-Json $result "mising required argument: myparm"
}
$result.changed = $true
$result.msg = $item_myparm


#Set-Attr $result.helloworld "myparm" $myparm

Exit-Json $result;