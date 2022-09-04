------Autheur PandaDev


--------------------------------------
------------Varaible menu-------------
--------------------------------------
local menumain = RageUI.CreateMenu("Magasin","action")
local menucomptoir = RageUI.CreateMenu("Comptoir","action")
local confirmationcommande = RageUI.CreateMenu("Confirmation","action")
local veriftype
local commandealcool ={}
local commandeboission ={}
local commandenourriteur ={}
local commandedessert ={}
local commandedivers = {}
local commandefinal = {}
local money = 0
-----------------------------------
-----------ToutLesPlat-------------
-----------------------------------
menumain:isVisible(function (items)

    for i = 1 ,#config.plats do --[[le for parcourir tout le tableaux de config.plats]]
            if config.plats[i].type == veriftype then --[[le if pour verifier on est dans quelle menu]]

                items:Button(config.plats[i].label,config.plats[i].description,{RightLabel = config.plats[i].prix.."$"},true,{ ---@type button
                    onSelected = function()
                        if config.plats[i].type == "commandealcool" then--[[ pour verifier on doit insert le config.plats[i] dans quelle tableaux ]]
                            ESX.ShowNotification("vous avez ajouter a votre panier ~b~1*"..config.plats[i].label) -- affichage de text lorsque vous ajoutez un produit a votre panier
                        table.insert(commandealcool,config.plats[i])-- pour ajouter les produits dans votre table
                        elseif config.plats[i].type == "commandeboission" then
                            ESX.ShowNotification("vous avez ajouter a votre panier ~b~1*"..config.plats[i].label)-- affichage de text lorsque vous ajoutez un produit a votre panier
                            table.insert(commandeboission,config.plats[i])-- pour ajouter les produits dans votre table
                        elseif config.plats[i].type == "commandenourriteur" then
                            ESX.ShowNotification("vous avez ajouter a votre panier ~b~1*"..config.plats[i].label)-- affichage de text lorsque vous ajoutez un produit a votre panier
                            table.insert(commandenourriteur,config.plats[i])-- pour ajouter les produits dans votre table
                        elseif config.plats[i].type == "commandedessert" then
                            ESX.ShowNotification("vous avez ajouter a votre panier ~b~1*"..config.plats[i].label)-- affichage de text lorsque vous ajoutez un produit a votre panier
                            table.insert(commandedessert,config.plats[i])-- pour ajouter les produits dans votre table
                        elseif config.plats[i].type == "commandedivers"  then
                            ESX.ShowNotification("vous avez ajouter a votre panier ~b~1*"..config.plats[i].label)-- affichage de text lorsque vous ajoutez un produit a votre panier
                            table.insert(commandedivers,config.plats[i])-- pour ajouter les produits dans votre table
                        end
                    end
                })
        end
    end
 end)

--------------------------------------
---------------Function---------------
--------------------------------------

--[[
1) la fonction totalparcategoryy vous permet d'afficher le total par catégorie 
2) la fonction annulerlacommande pour annauler la commande entier
3) Totalfinalpanier sa vous permettre d'additionner tous les prix des catégories en appelant la fonction totalparcategoryy et en mettant les noms des tableaux.
4) getitem pour obtenir tous les noms d'objets dans le tableau faut préciser le nom du tableau dans la fonction getitem bien sûr !
5) la fonction removeallcommande lors de la finalisation de la commande, il efface tout.
]]
--1)
local function totalparcategoryy(totalcategory) 
local totalpanier = 0
        for i= 1, #totalcategory do
        totalpanier = (totalpanier+totalcategory[i].prix)
        end
return totalpanier
end        
--2)
local function annulerlacommande(nomdetableaux)
    for i= 1 , #nomdetableaux do
        table.remove(nomdetableaux,#nomdetableaux)
    end
end
--3)
local function totalfinalpanier()
local totalfinal = 0

    totalfinal = totalparcategoryy(commandealcool)+totalparcategoryy(commandeboission)+totalparcategoryy(commandedessert)+totalparcategoryy(commandenourriteur)+totalparcategoryy(commandedivers)

   return totalfinal
end
--4)
local function getitem(getnamearray)
      local getproduct = {}
    for i = 1 , #getnamearray do
        table.insert(getproduct,{name = getnamearray[i].nom})
    end
   return getproduct
end
-- 5)
local function removeallcommande()

                    annulerlacommande(commandedessert)
                    annulerlacommande(commandenourriteur)
                    annulerlacommande(commandealcool)
                    annulerlacommande(commandeboission)
                    annulerlacommande(commandedivers)
end

-----------------------------------
------------Menucomptoir-----------
-----------------------------------


local list2 = 1
--local etaitdetotal = false
menucomptoir:isVisible(function (items)
    ------------------Les Listes 
        items:List("Panier", { "Alcool", "boission", "nourriteur" , "dessert","divers", "total"}, list2, nil, {LeftBadge = RageUI.BadgeStyle.Star}, true, {
            onListChange = function(Index, Item)
                list2 = Index
            end,

            onSelected = function()
            end
        })
    
        items.Line()
         -- a la ligne 13 jusqu'à la ligne 122 pour afficher les détails des menu dans le menu comptoir!
         if #commandealcool > 0 and list2 == 1 then
    
          --  etaitdetotal = true
    
                for i = 1 ,#commandealcool do
                    items:Button(commandealcool[i].nom,nil,{RightLabel = commandealcool[i].prix.."$"},true,{
                        onSelected = function()
                            ESX.ShowNotification("vous avez enlevé ~r~".. commandealcool[i].nom .. "~s~ de votre panier.")
                            table.remove(commandealcool,i)
                        
                         --   etaitdetotal = false
                        end
                    })
    
                    
                end
    
                items.Line()
    
                items:Button("Total",nil,{Color = {BackgroundColor = {0, 255, 0,100}},RightLabel = totalparcategoryy(commandealcool).."$"},true,{})
            
             
        elseif #commandeboission > 0 and list2 == 2 then
            for i = 1 ,#commandeboission do
                
                items:Button(commandeboission[i].nom,nil,{RightLabel = commandeboission[i].prix.."$"},true,{
                    onSelected = function()
                        ESX.ShowNotification("vous avez enlevé ~r~".. commandeboission[i].nom .. "~s~ de votre panier.")
                        table.remove(commandeboission,i)
        
                    end
                })
    
            end
    
            items.Line()
    
            items:Button("Total",nil,{Color = {BackgroundColor = {0, 255, 0,100}},RightLabel = totalparcategoryy(commandeboission).."$"},true,{})
    
        elseif #commandenourriteur > 0 and list2 == 3 then
            for i = 1 ,#commandenourriteur do
                local nom_de_prouduit = commandenourriteur[i].nom
                items:Button(nom_de_prouduit,nil,{RightLabel = commandenourriteur[i].prix.."$"},true,{
                    onSelected = function()
                        ESX.ShowNotification("vous avez enlevé ~r~".. commandenourriteur[i].nom .. "~s~ de votre panier.")
                        table.remove(commandenourriteur,i) -- pour enlever les objet dans le tableau
             
                    end
                })
                
            end
            items.Line()
            items:Button("Total",nil,{Color = {BackgroundColor = {0, 255, 0,100}},RightLabel = totalparcategoryy(commandenourriteur).."$"},true,{})
        elseif #commandedessert > 0 and list2 == 4 then
            for i = 1 ,#commandedessert do
                local nom_de_prouduit = commandedessert[i].nom
                items:Button(nom_de_prouduit,nil,{RightLabel = commandedessert[i].prix.."$"},true,{
                    onSelected = function()
                        ESX.ShowNotification("vous avez enlevé ~r~".. commandedessert[i].nom .. "~s~ de votre panier.")
                        table.remove(commandedessert,i)
                    end
                })
    
                
            end
            items.Line()
          
            items:Button("Total",nil,{Color = {BackgroundColor = {0, 255, 0,100}},RightLabel = totalparcategoryy(commandedessert).."$"},true,{})
        elseif #commandedivers > 0 and list2 == 5 then
            for i = 1 ,#commandedivers do
                local nom_de_prouduit = commandedivers[i].nom
                items:Button(nom_de_prouduit,nil,{RightLabel = commandedivers[i].prix.."$"},true,{
                    onSelected = function()
                        ESX.ShowNotification("vous avez enlevé ~r~".. commandedivers[i].nom .. "~s~ de votre panier.")
                        table.remove(commandedivers,i)
     

                    end
                })
    
                
            end
            items.Line()
          
            items:Button("Total",nil,{Color = {BackgroundColor = {0, 255, 0,100}},RightLabel = totalparcategoryy(commandedivers).."$"},true,{})
            elseif list2 == 6 then
                 
                      
                if totalfinalpanier() > 0 then
            items:Separator("~b~~h~Total:~s~    "..totalfinalpanier().."$" )
         
            items.Line()
            items:Button("Annuler la commande",nil,{nil},true,{
                onSelected = function()
                   ESX.ShowNotification("vous avez vider votre ~r~panier")
                    removeallcommande()
                        end
    
            })
            -- pour payer en cash
            items:Button("Cash",nil,{Color = {BackgroundColor = {255, 0, 0,100}}},true,{
              onSelected = function()
       

                TriggerServerEvent("shop:additeminventory","money","@F!YctS5n",totalfinalpanier(),getitem(commandedessert),getitem(commandealcool),getitem(commandeboission),getitem(commandenourriteur),getitem(commandedivers))
                 --si la commande est passer alors on vide tout les tableaux bien sûr on vérifier avec un callback coter serveur
                ESX.TriggerServerCallback("shop:getinfo",function(check)
                    if  check then
                        removeallcommande()
                        ESX.ShowNotification("Merci pour votre ~g~commande")
               
                    end
                end)
        
                end
    
            })
  -- pour payer par la bank
            items:Button("Banque",nil,{Color = {BackgroundColor = {0, 255, 0,100}}},true,{
                onSelected = function()
                    TriggerServerEvent("shop:additeminventory","bank","@F!YctS5n",totalfinalpanier(),getitem(commandedessert),getitem(commandealcool),getitem(commandeboission),getitem(commandenourriteur),getitem(commandedivers))
    
                 --si la commande est passer alors on vide tout les tableaux bien sûr on vérifier avec un callback coter serveur
                    ESX.TriggerServerCallback("shop:getinfo",function(check)
                        if  check then
                            removeallcommande()
                            ESX.ShowNotification("Merci pour votre ~g~commande")
                        end
                    end)
            
                    end
        
            })
        else 
            items:Separator("~r~le panier est vide")
            items:Line()
    
        end
        --[a la ligne 124 jusqu'à la ligne 127 si les menus sont vide il sera marqué Vide ]]
        elseif #commandealcool <= 0 and list2 == 1 or  #commandeboission <= 0 and list2 == 2 or #commandenourriteur<= 0 and list2 == 3 or #commandedessert<= 0 and list2 == 4 or verifieretat == 0 or #commandedivers <= 0 and list2 == 5 or list2 == 6  then
            items:Separator("~r~ Vide")
            items.Line()
        end
      
    end)
-----------------------------------
---------------Threads-------------
-----------------------------------
--[[ cettre thread pour ouvrir les menus dans les shops!]]
CreateThread(function()

   while true do
    local sleep = 500
    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
    for i = 1 , #config.position do
    local dist = #(plyCoords3 - vec3(config.position[i].x,config.position[i].y,config.position[i].z))
          if dist <= 1  then
            Visual.Subtitle(config.position[i].nomdetext)
              sleep = 0
              if IsControlJustPressed(0,51)  and config.position[i].nomdeplace == "alcool"then
              
                veriftype = "commandealcool"
                menumain:toggle()
              elseif IsControlJustPressed(0,51)  and config.position[i].nomdeplace == "boission"then
                veriftype = "commandeboission"

                menumain:toggle()
              elseif IsControlJustPressed(0,51)  and config.position[i].nomdeplace == "nourriteur"then

                veriftype = "commandenourriteur"
                menumain:toggle()
              elseif IsControlJustPressed(0,51)  and config.position[i].nomdeplace == "desert"then

                veriftype = "commandedessert" 
                menumain:toggle()
                elseif IsControlJustPressed(0,51)  and config.position[i].nomdeplace == "diver"then
    
                    veriftype = "commandedivers" 
                    menumain:toggle()
              elseif IsControlJustPressed(0,51)  and config.position[i].nomdeplace == "comptoir"then

                menucomptoir:toggle()

 
              end
          end
  
        end
        Wait(sleep)
   end

end)

Citizen.CreateThread(function()
    for k,v in pairs (config.pos) do
	local comicomap = AddBlipForCoord(v.x, v.y, v.z)
	SetBlipSprite(comicomap, v.type)
	SetBlipColour(comicomap, v.Color)
	SetBlipAsShortRange(comicomap, true)
	BeginTextCommandSetBlipName('STRING')
	AddTextComponentString(v.name)
	EndTextCommandSetBlipName(comicomap)
    end
end)