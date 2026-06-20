tellraw yl_jiu_qiu [{"text":"all: "},{"score":{"name":"#system","objective": "alreadyload"}}]
scoreboard players set #system finish 1
function pld:beta/set_version
execute as @a run function pld:system/menubook/get_datapack_version
tellraw @a {"translate":"pl.info.resourcepack_version","color":"gold"}
tellraw @a {"translate":"pl.info.loadfinish","color":"gold"}
bossbar remove pl:load
setblock 183 189 -1769 minecraft:repeating_command_block[block_entity_data={Command:"tp @a[distance=..20] 1315 76 42",auto:1b}] replace 
setworldspawn 1315 76 42
schedule function pld:beta/gamebegintp 5s