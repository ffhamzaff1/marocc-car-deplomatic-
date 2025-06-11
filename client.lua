-- ملف client.lua

local carModel = "marocdiplocar"  -- الاسم ديال مود السيارة (خاصك تعاير الاسم هنا)
local plateText = "CD-007-MA"     -- رقم لوحة السيارة الديبلوماسية

RegisterCommand("safir", function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)

    -- تحميل مود السيارة
    RequestModel(carModel)
    while not HasModelLoaded(carModel) do
        Citizen.Wait(100)
    end

    -- إنشاء السيارة في مكان اللاعب
    local vehicle = CreateVehicle(carModel, coords.x, coords.y, coords.z, GetEntityHeading(playerPed), true, false)
    
    -- وضع اللاعب داخل السيارة كسائق
    SetPedIntoVehicle(playerPed, vehicle, -1)

    -- تعديل اللوحة
    SetVehicleNumberPlateText(vehicle, plateText)

    -- تعديل لون السيارة (أسود رسمي)
    SetVehicleCustomPrimaryColour(vehicle, 0, 0, 0)
    SetVehicleCustomSecondaryColour(vehicle, 0, 0, 0)

    -- تفعيل مود السيارة  (اختياري حسب المود)
    SetVehicleModKit(vehicle, 0)

    -- إضاءة السيارة (مثلا تفعيل أضواء العمل الرسمية)
    ToggleVehicleMod(vehicle, 22, true)

    -- رسالة في الشات للاعب
    TriggerEvent('chat:addMessage', {
        color = {0, 255, 0},
        args = {"🚘", "سيارة السفير المغربي تم استدعاؤها!"}
    })
end)
