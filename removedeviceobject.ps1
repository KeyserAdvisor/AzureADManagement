$devices=Import-CSV 'filepath' | select -ExpandProperty ObjectId
forEach($dev in $devices){
    Write-Host $dev
    Remove-AzureADDevice -ObjectID $dev
    }

