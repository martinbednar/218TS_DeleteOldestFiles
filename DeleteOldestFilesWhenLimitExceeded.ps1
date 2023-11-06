$NumberToSave = 1000


$items = Get-ChildItem "C:\FTP\ST100"  | Sort-Object Name -Descending
if ($NumberToSave -lt $items.Count)
{
    $items[$NumberToSave..($items.Count-1)] | Remove-Item
}


$items = Get-ChildItem "C:\FTP\ST200"  | Sort-Object Name -Descending
if ($NumberToSave -lt $items.Count)
{
    $items[$NumberToSave..($items.Count-1)] | Remove-Item
}

$items = Get-ChildItem "C:\FTP\ST100_old"  | Sort-Object Name -Descending
if ($NumberToSave -lt $items.Count)
{
    $items[$NumberToSave..($items.Count-1)] | Remove-Item
}


$items = Get-ChildItem "C:\FTP\ST200_old"  | Sort-Object Name -Descending
if ($NumberToSave -lt $items.Count)
{
    $items[$NumberToSave..($items.Count-1)] | Remove-Item
}
