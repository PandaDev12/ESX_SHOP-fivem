config = {}

config.plats = {
        --[[
        1) nom= nom de l'objet dans la base de donner
        2) label= label de l'objet dans le serveur
        3) prix= prix de l'ojbet
        4) description = description de l'objet
        5) type =  type de l'objet les type sont marquer a la ligne 11
    ]]
    ---@type vous avez 5 type sont = "commandealcool","commandeboission","commandenourriteur","commandedessert","commandediver"
    {nom = "vodka",label = "Vodka",prix = 18 , description="40 degrés",type = "commandealcool"},
    {nom = "water",label = "water",prix = 8 , description="eau potable",type = "commandeboission"},
    {nom = "oasis",label = "Oasis",prix = 15 , description="Jus",type = "commandeboission"},
    {nom = "bread",label = "Pain",prix = 8 , description="Pain fais maison",type = "commandenourriteur"},
    {nom = "pizza",label = "Pizza",prix = 25 , description="Pizza",type = "commandenourriteur"},
    {nom = "kinder",label = "Kinder",prix = 5 , description="kinder",type = "commandedessert"},
    {nom = "twix",label = "Twix",prix = 5 , description="Twix",type = "commandedessert"},
    {nom = "phone",label = "telephone",prix = 100 , description="pour accéder a votre téléphone",type = "commandedivers"},
}



config.position = {
    ---@type vous avez 5 nomdeplace sont = "alcool","boission","nourriteur","desert","comptoir","diver"
    --[[
        1) x= coordoner x
        2) y= coordoner y
        3) z= coordoner z
        4) nomdeplace = nom de menu par exemple vous voulez le comptoir vous mettez comptoir vous voulez  celui des nourriteur vous mettez nourriteur toute façon les type sont marquer en haut a la ligne 18 
        5) nomdetext = " le text dans les notifications des menus"
    ]]
    {x= -56.360435, y= -1750.747192, z= 29.414673, nomdeplace = "alcool", nomdetext = "Appuyer sur [~b~E~s~] pour accéder a la liste des alcools"},
    {x= -54.210983, y= -1748.057129, z= 29.414673, nomdeplace = "boission",nomdetext = " Appuyer sur [~b~E~s~] pour  accéder a la liste des boissions"},
    {x= -51.243958, y= -1748.347290, z= 29.414673, nomdeplace = "nourriteur",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des nourriteurs"},
    {x= -49.226372, y= -1758.329712, z= 29.414673, nomdeplace = "desert",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des deserts"},
    {x= -46.66,     y= -1755.82,     z= 29.41,     nomdeplace = "diver",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des divers"},
    {x= -47.657143, y= -1757.129639, z= 29.414673, nomdeplace = "comptoir",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des comptoirs"},
    ------------------------------------------------------------------------------------------------------------------------
    {x= 1152.949463,y= -325.173615,  z= 69.1970213, nomdeplace = "alcool",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des alcools"},
    {x= 1152.514282,y= -322.509888,  z=69.197021, nomdeplace = "boission",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des boissions"},
    {x= 1156.272583, y= -319.727478, z= 69.197021, nomdeplace = "nourriteur",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des nourriteurs"},
    {x= 1163.208740, y= -325.028564, z= 69.197021, nomdeplace = "desert",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des deserts"},
    {x= 1163.076904, y= -321.164825, z= 69.197021,     nomdeplace = "diver",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des divers"},
    {x= 1163.406616, y= -322.865936, z= 69.197021, nomdeplace = "comptoir",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des comptoirs"},
    ------------------------------------------------------------------------------------------------------------------------
    {x= -718.114258, y= -914.189026, z= 19.203613, nomdeplace = "alcool",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des alcools"},
    {x= -718.206604, y= -911.248352, z= 19.203613, nomdeplace = "boission",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des boissions"},
    {x= -714.316467, y= -909.191223, z= 19.203613, nomdeplace = "nourriteur",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des nourriteurs"},
    {x= -707.670349, y= -915.599976, z= 19.203613, nomdeplace = "desert",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des deserts"},
    {x= -707.419800, y= -911.934082, z= 19.203613,     nomdeplace = "diver",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des divers"},
    {x= -707.419800, y= -913.753845, z= 19.203613, nomdeplace = "comptoir",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des comptoirs"},
    ------------------------------------------------------------------------------------------------------------------------
    {x= -1828.351685,y= 785.472534,  z= 138.315063, nomdeplace = "alcool",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des alcools"},
    {x= -1830.527466,y= 787.819763,  z= 138.315063, nomdeplace = "boission",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des boissions"},
    {x= -1829.749390,y= 791.432983,  z= 138.264526, nomdeplace = "nourriteur",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des nourriteurs"},
    {x= -1819.898926,y= 791.736267,  z= 138.095947, nomdeplace = "desert",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des deserts"},
    {x= -1822.312134,y= 794.676941,  z= 138.112793,     nomdeplace = "diver",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des divers"},
    {x= -1821.019775,y= 793.305481,  z= 138.112793, nomdeplace = "comptoir",nomdetext = "Appuyer sur [~b~E~s~] pour  accéder a la liste des comptoirs"},
}

config.pos = {
    --[[les blips!]]
        {x= -53.36,     y= -1756.7,  z= 29.4,   type = 59,  Color = 25, Size= 0.8, name = "Magasin"},
        {x= 1163.3,     y= -323.8,   z= 69.2,   type = 59,  Color = 25, Size= 0.8, name = "Magasin"},
        {x= -707.5,     y= -914.2,   z= 19.2,   type = 59,  Color = 25, Size= 0.8, name = "Magasin"},
        {x= -1820.5,    y= 792.5,    z= 138.1,   type = 59,  Color = 25, Size= 0.8, name = "Magasin"},
        -- {x= 1698.3,     y= 4924.4,   z= 42.0,   type = 59,  Color = 25, Size= 0.8, name = "Magasin"},
        -- {x= 1135.8,     y= -982.2,   z= 46.4,   type = 59,  Color = 25, Size= 0.8, name = "Magasin"},
        -- {x= -1222.9,    y= -906.9,   z= 12.34,  type = 59,  Color = 25, Size= 0.8, name = "Magasin"},
        -- {x= -1487.5,    y= -379.1,   z= 40.1,   type = 59,  Color = 25, Size= 0.8, name = "Magasin"},
        -- {x= -2968.2,    y= 390.9,    z= 15.0,   type = 59,  Color = 25, Size= 0.8, name = "Magasin"},
        -- {x= 1166.0,     y= 2708.9,   z= 38.1,   type = 59,  Color = 25, Size= 0.8, name = "Magasin"},
        -- {x= 1392.5,     y= 3604.6,   z= 34.9,   type = 59,  Color = 25, Size= 0.8, name = "Magasin"}

}
