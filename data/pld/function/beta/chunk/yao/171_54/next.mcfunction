
#要做的事
data merge block 2734 76 870 {front_text:{messages:['{"translate":"pl.sign.yao11.text1"}','{"translate":"pl.sign.yao11.text2"}','{"translate":"pl.sign.yao11.text3"}','{"translate":"pl.sign.yao11.text4"}']}}
data merge block 2747 54 873 {front_text:{messages:['{"translate":"pl.sign.yao10.text1"}','{"translate":"pl.sign.yao10.text2"}','{"translate":"pl.sign.yao10.text3"}','{"translate":"pl.sign.yao10.text4"}']}}

data merge block 2756 54 875 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.yao9.text2"}','{"translate":"pl.sign.yao9.text3"}','{"translate":""}']}}
data merge block 2756 54 868 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.yao9.text2"}','{"translate":"pl.sign.yao9.text3"}','{"translate":""}']}}


data merge block 2750 81 872 {front_text:{messages:['{"translate":"pl.spsign.yao1.text1","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.yao1.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.yao1.text2"}','{"translate":"pl.spsign.yao1.text3"}','{"translate":""}']}}

data merge block 2748 32 872 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.yao13.text2"}','{"translate":"pl.sign.yao13.text3"}','{"translate":"pl.sign.yao13.text4"}']}}
data merge block 2742 32 872 {front_text:{messages:['{"translate":"pl.sign.yao14.text1"}','{"translate":"pl.sign.yao14.text2"}','{"translate":"pl.sign.yao14.text3"}','{"translate":"pl.sign.yao14.text4"}']}}
data merge block 2742 31 871 {front_text:{messages:['{"translate":"pl.sign.yao15.text1"}','{"translate":"pl.sign.yao15.text2"}','{"translate":"pl.sign.yao15.text3"}','{"translate":"pl.sign.yao15.text4"}']}}

setblock 2751 80 871 minecraft:command_block[custom_data={Command:"execute as @p[x=2750,y=81,z=871,distance=..3] run function pld:pvp/3/pre/sign/player_check_atk"}] replace 
setblock 2740 31 872 minecraft:command_block[custom_data={Command:"execute as @p[x=2742,y=31,z=872,distance=..3] run function pld:pvp/3/pre/sign/sign_up_atk"}] replace
setblock 2750 31 872 minecraft:command_block[custom_data={Command:"tp @p[x=2748,y=31,z=872,distance=..5] 2748 81 873 180 20"}] replace


setblock 2745 77 868 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/pvp3_atk"}] replace 
setblock 2750 39 869 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/tong20"}] replace 
setblock 2739 39 874 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/chat5"}] replace 
setblock 2731 70 873 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/chat6"}] replace 
setblock 2741 52 868 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/yaomain5"}] replace 
fill 2748 44 867 2749 44 867 air
setblock 2750 44 867 minecraft:bookshelf
setblock 2755 49 874 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/guard"}] replace 
setblock 2755 49 869 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/guard"}] replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 2755 49 874 run function pld:npcs/yao/guard
execute positioned 2755 49 869 run function pld:npcs/yao/guard
execute positioned 2745 77 868 run function pld:npcs/yao/pvp3_atk
execute positioned 2750 39 869 run function pld:npcs/yao/tong20
execute positioned 2739 39 874 run function pld:npcs/yao/chat5 
execute positioned 2731 70 873 run function pld:npcs/yao/chat6 
execute positioned 2741 52 868 run function pld:npcs/yao/yaomain5
#区块卸载
forceload remove 2733 871 2758 871
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/yao/172_59/pre 1t