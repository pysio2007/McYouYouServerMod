
###this files checks to see if the water it found below the playerwas bucketed by checking if the player is still in the air when that water is found
###if they are still in the air, that means that water was placed before the fall

execute if score @s refinedadv_watertime matches 3.. run advancement revoke @s only refined_advancements:technical/used_water_bucket
execute unless score @s refinedadv_watertime matches 3.. run scoreboard players add @s refinedadv_watertime 1
execute if score @s[advancements={refined_advancements:technical/used_water_bucket=true}] refinedadv_watertime matches 0..2 if score @s refinedadv_fallspeed matches ..-114 unless block ~ ~-0.5 ~ #refined_advancements:permeable run advancement grant @s only refined_advancements:adventure/bucket1
execute if score @s[advancements={refined_advancements:technical/used_water_bucket=true}] refinedadv_watertime matches 0..2 if score @s refinedadv_fallspeed matches ..-228 unless block ~ ~-0.5 ~ #refined_advancements:permeable run advancement grant @s only refined_advancements:adventure/bucket2
