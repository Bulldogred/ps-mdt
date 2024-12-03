Project Sloth MDT
For all support questions, ask in our Discord support chat. Do not create issues if you need help. Issues are for bug reporting and new features only.

Dependencies
QBCore
cd_dispatch https://codesign.pro/product/4206357
Renewed-Banking https://github.com/Renewed-Scripts/Renewed-Banking
oxmysql
qb-apartments | Config available to enable or disable.
qb-communityservice - If you're planning on sending to community service.
Installation
Download ZIP
Drag and drop resource into your server files, make sure to remove -main in the folder name
Open the sql folder and run the SQL script which corresponds to your framework
Weapon Info Export
Adds server export for inserting weaponinfo records, that can be used elsewhere in your server, such as weapon purchase, to add information to the mdt. Below is the syntax for this, all arguments are strings.

exports['ps-mdt']:CreateWeaponInfo(serial, imageurl, notes, owner, weapClass, weapModel)
image

Setup for ox_inventory
Set Config.InventoryForWeaponsImages to "ox_inventory" and Config.RegisterCreatedWeapons to true/false as desired.

Self Register Weapons
Your citizens can self-register weapons found on their inventory. Event to trigger is below if you're using qb-target. There's also a command available named registerweapon but you'll need to uncomment if you want to use it.
ps-mdt:client:selfregister
 9fda3730fdeb2c254d13696fb104131d.mp4 
Automatic Mugshot Pictures
image

Setup for Automatic Mugshot
Set Config.UseCQCMugshot to true, It is true by default. (Line 5 in Config.lua)
Config.UseCQCMugshot = true
Choose what photos you want by changing this: (Line 8 in Config.lua)
-- Front, Back Side. Use 4 for both sides, we recommend leaving at 1 for default.
Config.MugPhotos = 1
Use Fivemerr to upload your mugshot pictures. Do not use Discord, images will expire. Documents for setup are here.
Config.FivemerrMugShot = true
Create a Discord Webhook and add it here
-- Images for mug shots will be uploaded here. Add a Discord webhook. 
local MugShotWebhook = ''
Fine & Citation via item
Add the item to your shared.lua > items.lua
	['mdtcitation'] 				 = {['name'] = 'mdtcitation', 			  	  	['label'] = 'Citation', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'citation.png', 			['unique'] = true, 		['useable'] = false, ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Citation from a police officer!'},
Add the below code to your inventory > app.js. Should be somewhere around markedbills, see below for reference.
        } else if (itemData.name == "mdtcitation") {
    $(".item-info-title").html("<p>" + itemData.label + "</p>");
    $(".item-info-description").html(
        '<p><strong>Citizen ID: </strong><span>' + itemData.info.citizenId + '</span></p>' +
        '<p><strong>Fine: </strong><span>' + itemData.info.fine + '</span></p>' +
        '<p><strong>Citation Date: </strong><span>' + itemData.info.date + '</span></p>' +
        '<p><strong>Incident ID: </strong><span>' + itemData.info.incidentId + '</span></p>' +
        '<p><strong>Involved Officer: </strong><span>' + itemData.info.officer + '</span></p>'
    );
Reference for proper placement.
image

Clock In/Out & Leaderboard
Triggers when officers Toggle Duty from inside the mdt.
Create a Discord Webhook and add it here here
local ClockinWebhook = ''
image image

Jailing & Community Service
If you're getting kicked for attempted exploit abuse while jailing. Locate the following event below in qb-policejob > server > main.lua
police:server:JailPlayer
Then comment out around line 779 as seen below
-- if #(playerCoords - targetCoords) > 2.5 then return DropPlayer(src, "Attempted exploit abuse") end
Inventory Edit | Automatic Add Weapons with images
lj-inventory will come already with the changes needed for this to work.
qb-inventory follow instructions below.
Edit the following event
RegisterNetEvent('inventory:server:SetInventoryData', function(fromInventory, toInventory, fromSlot, toSlot, fromAmount, toAmount)
        elseif QBCore.Shared.SplitStr(shopType, "_")[1] == "Itemshop" then
            if Player.Functions.RemoveMoney("cash", price, "itemshop-bought-item") then
                if QBCore.Shared.SplitStr(itemData.name, "_")[1] == "weapon" then
                    itemData.info.serie = tostring(QBCore.Shared.RandomInt(2) .. QBCore.Shared.RandomStr(3) .. QBCore.Shared.RandomInt(1) .. QBCore.Shared.RandomStr(2) .. QBCore.Shared.RandomInt(3) .. QBCore.Shared.RandomStr(4))
                    itemData.info.quality = 100
                end
                local serial = itemData.info.serie
                local imageurl = ("https://cfx-nui-qb-inventory/html/images/%s.png"):format(itemData.name)
                local notes = "Purchased at Ammunation"
                local owner = Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname
                local weapClass = 1
                local weapModel = QBCore.Shared.Items[itemData.name].label
                AddItem(src, itemData.name, fromAmount, toSlot, itemData.info)
                TriggerClientEvent('qb-shops:client:UpdateShop', src, QBCore.Shared.SplitStr(shopType, "_")[2], itemData, fromAmount)
                QBCore.Functions.Notify(src, itemInfo["label"] .. " bought!", "success")
                exports['ps-mdt']:CreateWeaponInfo(serial, imageurl, notes, owner, weapClass, weapModel)
                TriggerEvent("qb-log:server:CreateLog", "shops", "Shop item bought", "green", "**"..GetPlayerName(src) .. "** bought a " .. itemInfo["label"] .. " for $"..price)
            elseif bankBalance >= price then
                Player.Functions.RemoveMoney("bank", price, "itemshop-bought-item")
                if QBCore.Shared.SplitStr(itemData.name, "_")[1] == "weapon" then
                    itemData.info.serie = tostring(QBCore.Shared.RandomInt(2) .. QBCore.Shared.RandomStr(3) .. QBCore.Shared.RandomInt(1) .. QBCore.Shared.RandomStr(2) .. QBCore.Shared.RandomInt(3) .. QBCore.Shared.RandomStr(4))
                    itemData.info.quality = 100
                end
                local serial = itemData.info.serie
                local imageurl = ("https://cfx-nui-qb-inventory/html/images/%s.png"):format(itemData.name)
                local notes = "Purchased at Ammunation"
                local owner = Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname
                local weapClass = 1
                local weapModel = QBCore.Shared.Items[itemData.name].label
                AddItem(src, itemData.name, fromAmount, toSlot, itemData.info)
                TriggerClientEvent('qb-shops:client:UpdateShop', src, QBCore.Shared.SplitStr(shopType, "_")[2], itemData, fromAmount)
                QBCore.Functions.Notify(src, itemInfo["label"] .. " bought!", "success")
				exports['ps-mdt']:CreateWeaponInfo(serial, imageurl, notes, owner, weapClass, weapModel)
                TriggerEvent("qb-log:server:CreateLog", "shops", "Shop item bought", "green", "**"..GetPlayerName(src) .. "** bought a " .. itemInfo["label"] .. " for $"..price)
            else
                QBCore.Functions.Notify(src, "You don't have enough cash..", "error")
            end
Wolfknight Plate Reader & Radar Compatibility
Support for Wolfknight Radar & Plate Reader https://github.com/WolfKnight98/wk_wars2x

Plate reader automatically locks and alerts Police if:

Vehicle owner is Wanted
Vehicle owner has no drivers licence
Vehicle has a BOLO
IMPORTANT:

Ensure you set "CONFIG.use_sonorancad = true" in wk_wars2x/config.lua
This reduces the plate reader events to player's vehicles and doesn't query the database for hundreds of NPC vehicles

Video Demonstration
https://youtu.be/w9PAVc3ER_c

image image image image

Traffic Stop Radialmenu Alert
When initiating a traffic stop allows you to notify your fellow officers of your location and provide details about the current location and stopped vehicle through the radial menu.
Add the following code right above function READER:Main() on cl_plate_reader.lua
local Vehicle = nil
local function GetFrontPlate()
	local data = {
		locked = READER.vars.cams["front"].locked,
		plate = READER.vars.cams["front"].plate,
		veh = Vehicle,
	}
	return data
end exports("GetFrontPlate", GetFrontPlate)
Add the following into cl_plate_reader.lua after local veh = UTIL:GetVehicleInDirection( PLY.veh, start, offset ) on the function function READER:Main()
			if i == 1 then
				Vehicle = veh
			end
Should look like this after completing the above steps. image
Add ps-mdt:client:trafficStop into the Radialmenu
Preview.
image

Roster and SOPs Setup
You need a Google Document / Sheet link that is viewable.
Paste the link you got in the config here:

-- Google Docs Link
Config.sopLink = {
    ['police'] = '',
    ['ambulance'] = '',
    ['bcso'] = '',
    ['doj'] = '',
    ['sast'] = '',
    ['sasp'] = '',
    ['doc'] = '',
    ['lssd'] = '',
    ['sapr'] = '',
}

-- Google Docs Link
Config.RosterLink = {
    ['police'] = '',
    ['ambulance'] = '',
    ['bcso'] = '',
    ['doj'] = '',
    ['sast'] = '',
    ['sasp'] = '',
    ['doc'] = '',
    ['lssd'] = '',
    ['sapr'] = '',	
}
Preview
image image image image image image image image

Multi Departments
LSPD image
BCSO image
SASP image
SAST image
SAPR image
LSSD image
DOC image
FAQ
How do I add charges to a criminal in an Incident? - After finding and adding the criminal citizen to the incident, right-click in the space under the criminal's name and select "Add Charge".


My dispatch calls are not being populated? - You have not started the dispatch resource before the mdt or renamed the dispatch resource name and not made the necessary changes in mdt to reflect that.

Getting a error about utf8mb4_unicode illegal collation? - QBCore has decided to change their collations on the new txAdmin recipe, change your collation on your players table to utf8mb4_general_ci. Run this query below on your database to automatically change it.

ALTER TABLE players CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
Reskins
The below repos are direct forks of ps-mdt and have been edited to fit certain countries/look.

US Different layout and different colors.
UK
Credits
Originally Echo RP MDT released by Flawws#999
CQC-Scripting for their cqc-mugshot
JoeSzymkowicz
MonkeyWhisper
Snipe
BackSH00TER
nggcasey
OK1ez
Crayons0814
LeSiiN
ImXirvin
lenzh
Everyone else that we may have missed, thank you!
