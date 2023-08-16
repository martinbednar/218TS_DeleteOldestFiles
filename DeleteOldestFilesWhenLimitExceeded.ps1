$NumberToSave = 200


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
