#要做的事
data merge block 1662 172 183 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren25.text2"}','{"translate":"pl.sign.ren25.text3"}','{"translate":"pl.sign.ren25.text4"}']}}
data merge block 1662 172 189 {front_text:{messages:['{"translate":"pl.sign.ren26.text1"}','{"translate":"pl.sign.ren26.text2"}','{"translate":"pl.sign.ren26.text3"}','{"translate":"pl.sign.ren26.text4"}']}}
data merge block 1661 171 189 {front_text:{messages:['{"translate":"pl.sign.ren27.text1"}','{"translate":"pl.sign.ren27.text2"}','{"translate":"pl.sign.ren27.text3"}','{"translate":"pl.sign.ren27.text4"}']}}
data merge block 1662 182 187 {front_text:{messages:['{"translate":"pl.spsign.ren2.text1","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.ren2.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.ren2.text2"}','{"translate":"pl.spsign.ren2.text3"}','{"translate":""}']}}

setblock 1663 180 187 minecraft:command_block[custom_data={Command:"execute as @p[x=1662,y=181,z=187,distance=..5] run function pld:pvp/2/pre/sign/player_check_atk"}] replace 

setblock 1662 171 181 minecraft:command_block[custom_data={Command:"tp @p[distance=..5] 1661 182 185 -117 10"}] replace 

setblock 1662 171 191 minecraft:command_block[custom_data={Command:"execute as @p[x=1662,y=171,z=189,distance=..5] run function pld:pvp/2/pre/sign/sign_up_atk"}] replace 

setblock 1664 176 184 minecraft:command_block[custom_data={Command:"function pld:npcs/ren/pvp2_atk"}] replace 

setblock 1653 174 181 minecraft:command_block[custom_data={Command:"function pld:npcs/ren/guard"}] replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 1664 176 184 run function pld:npcs/ren/pvp2_atk
execute positioned 1653 174 181 run function pld:npcs/ren/guard
#区块卸载
forceload remove 1658 184 1669 185
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/104_8/pre 1t