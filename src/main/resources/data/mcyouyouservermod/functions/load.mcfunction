
tellraw @a [{"translate": "Successfully loaded ","color": "gray"},{"translate": "Refined Advancements v1.0.3","color": "green"}]

### Pack Installed

scoreboard objectives add splatus.packs_installed dummy
scoreboard players set RefinedAdvancements splatus.packs_installed 1 

###

scoreboard objectives add refinedadv_clock dummy
scoreboard objectives add refinedadv_count dummy

scoreboard objectives add refinedadv_watertime dummy

scoreboard objectives add refinedadv_fallspeed dummy

scoreboard objectives add refinedadv_usedsponge used:sponge

scoreboard objectives add refinedadv_skykill custom:mob_kills