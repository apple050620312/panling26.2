execute as @s[scores={menu=1}] run function pld:system/menubook/plgetzm
execute as @s[scores={menu=2,job=1}] run function pld:system/arrowpack/arrowpack_auto_switch
execute as @s[scores={menu=3}] run function pld:system/menubook/lost_legend
execute as @s[scores={menu=6}] run function pld:system/test_bless/act/get_item
execute as @s[scores={menu=7}] run function pld:system/menubook/feather/check
execute as @s[scores={menu=8}] run function pld:system/menubook/tpstone/check
execute as @s[scores={menu=9}] run function pld:system/menubook/get_datapack_version
execute as @s[scores={menu=10}] run function pld:system/menubook/get_resourcepack_version
execute as @s[scores={menu=11}] run function pld:system/menubook/get_ach_pt
execute as @s[scores={menu=12}] run function pld:system/menubook/update/main
execute as @s[scores={menu=13}] run function pld:system/menubook/show_item/main
execute as @s[scores={menu=14}] run function pld:system/menubook/show_item/off

scoreboard players reset @s menu
scoreboard players enable @s menu
