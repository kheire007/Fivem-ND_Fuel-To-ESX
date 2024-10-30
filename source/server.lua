ESX = nil

Config.UseESX then
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent("ND_Fuel:pay", function(amount)
    local src = source
    local player = NDCore:getPlayer(src)
    if not player then return end

    player.deductMoney("bank", math.floor(amount), "Gas Station")
    player.notify({
        title = ("Paid: $%.2f for gas."):format(amount),
        type = "inform"
    })
end)
