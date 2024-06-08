Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        
        if Config.DisableNPCVehicles then
            SetParkedVehicleDensityMultiplierThisFrame(0.0)
            SetVehicleDensityMultiplierThisFrame(0.0)
            SetRandomVehicleDensityMultiplierThisFrame(0.0)
        end

        local density = Config.NPCPedestrianDensity / 100.0
        SetPedDensityMultiplierThisFrame(density)
        SetScenarioPedDensityMultiplierThisFrame(density, density)
    end
end)
