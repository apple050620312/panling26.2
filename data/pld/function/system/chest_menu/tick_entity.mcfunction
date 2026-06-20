#玩家丢出末影箱里的东西
execute as @s[type=item,nbt={Item:{components:{custom_data:{clickable:1}}}}] at @s run function pld:system/chest_menu/dropped_item

