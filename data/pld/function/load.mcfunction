# 當前已加載版本 #version int 10003
function pld:beta/loadscb
function pld:system/dz/load
function pld:pre/load
function pld:system/zf/zfload
function pld:system/menubook/menuload
function pld:system/arrowpack/arrowpackload
function pld:system/test_inv/invload
function pld:system/zftest/zftestload
function pld:system/food/load
function pld:instances/instance1/load
function pld:instances/instance2/load
function pld:instances/instance3/load
function pld:instances/instance3_0/load
function pld:instances/instance4/load
function pld:instances/instance5/load
function pld:system/archer_damage/load
function pld:system/feather/load
function pld:system/truth/load
function pld:system/weapon_skill_cool/load

function pld:test/ren/load
function pld:test/shen/load
function pld:test/zhan/load
function pld:system/test_bless/load
function pld:system/race_tp/load

function pld:system/tpsystem/load
function pld:system/house/load
function pld:system/honor_enchants/load

function pld:pvp/load

function pld:monsters/west/boss_skill/load

function pld:instances/ture_pangu/load

function pld:system/warrior_attack/load

function pld:system/archer_damage/weapon_skill/load

function pld:system/less_rabbits/load

function pld:equipment_lock/load
function pld:equipment_lock/equipment/armor/set_bonus/load

function pld:system/archer_damage/clear_arrow/load

function pld:system/chest_menu/load
function pld:system/tails/load
function pld:system/rechoose/load
#function pld:ticks/1s
function pld:ticks/5s
function pld:ticks/15s

scoreboard objectives add test_cool dummy ["試煉重進冷卻"]
#姜太公
scoreboard objectives add count_jiang_tai_gong dummy

#強加載位置
#假盤強加載
forceload add 3191 -1877 3059 -1895
#神族領地皇城點
forceload add 3162 106
forceload add 3167 939
forceload add 1598 122
forceload add 3199 -346 3200 -346
forceload add 2853 830

forceload add 0 0
kill @e[x=0,y=0,z=0,distance=..5,type=minecraft:marker,tag=rot_marker]
summon minecraft:marker 0.0 0.0 0.0 {Tags:["rot_marker"]}
setblock 0 -1 0 minecraft:shulker_box
data modify storage pld:system empty_list set value 