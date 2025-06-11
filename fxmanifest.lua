fx_version 'cerulean'
game 'gta5'

author 'اسمك هنا'
description 'سيارة ديبلوماسية مغربية للسفراء في FiveM'
version '1.0.0'

client_scripts {
    'config.lua',  -- إذا بغيتي تستعمل ملف إعدادات خارجي (اختياري)
    'client.lua'
}

files {
    'stream/marocdiplocar.yft',
    'stream/marocdiplocar.ytd',
    'stream/vehicles.meta',
    'stream/handling.meta',
    'stream/vehiclelayouts.meta'
}

data_file 'VEHICLE_METADATA_FILE' 'stream/vehicles.meta'
data_file 'HANDLING_FILE' 'stream/handling.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'stream/vehiclelayouts.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/vehicles.meta'
