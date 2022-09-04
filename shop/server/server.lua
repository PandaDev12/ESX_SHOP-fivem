------Autheur PandaDev

local getstatus = false
local function getnameobject(namearry)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    for i = 1 , #namearry do
        xPlayer.addInventoryItem(namearry[i].name, 1)
    end
end
RegisterNetEvent("shop:additeminventory" , function(methodedepayment,codedesecurite,prix,Nom_dobjet,Nom_dobjet2,Nom_dobjet3,Nom_dobjet4,Nom_dobjet5)
 local source = source
 local xPlayer = ESX.GetPlayerFromId(source)
 local getmoney = xPlayer.getAccount(methodedepayment).money
   
    
    if codedesecurite == "@F!YctS5n" --[[une petite securité]] and getmoney >= prix then
    xPlayer.removeAccountMoney(methodedepayment,prix)
        getnameobject(Nom_dobjet)
        getnameobject(Nom_dobjet2)
        getnameobject(Nom_dobjet3)
        getnameobject(Nom_dobjet4)
        getnameobject(Nom_dobjet5)
        getstatus = true

    else 
          getstatus = false
        xPlayer.showNotification("il vous manque encore ~r~"..prix-getmoney.."$")
    end

end)



-- check status la commande est passer ou pas
ESX.RegisterServerCallback('shop:getinfo', function(source,cb)
 if  getstatus then
      cb(true)
  
 else 
    cb(false)
 end
end)