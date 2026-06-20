#主手检查
execute unless score @s right_click_run matches 1.. as @s[nbt={SelectedItem:{tag:{id:"panling:back_stone"}}}] run scoreboard players set @s right_click_run 1
execute unless score @s right_click_run matches 1.. as @s[nbt={SelectedItem:{tag:{id:"panling:ren_test_bless"}}}] run scoreboard players set @s right_click_run 2
execute unless score @s right_click_run matches 1.. as @s[nbt={SelectedItem:{tag:{id:"panling:arrowpack"}}}] run scoreboard players set @s right_click_run 3
execute unless score @s right_click_run matches 1.. as @s[nbt={SelectedItem:{tag:{type:1,limit:2}}}] run scoreboard players set @s right_click_run 5
execute unless score @s right_click_run matches 1.. as @s[nbt={SelectedItem:{tag:{type:1,limit:0,act:1}}}] run scoreboard players set @s right_click_run 6

#副手检查
execute unless score @s right_click_run matches 1.. as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"panling:back_stone"}}]}] run scoreboard players set @s right_click_run 1
execute unless score @s right_click_run matches 1.. as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"panling:ren_test_bless"}}]}] run scoreboard players set @s right_click_run 2
execute unless score @s right_click_run matches 1.. as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"panling:arrowpack"}}]}] run scoreboard players set @s right_click_run 4
execute unless score @s right_click_run matches 1.. as @s[nbt={Inventory:[{Slot:-106b,tag:{type:1,limit:2}}]}] run scoreboard players set @s right_click_run 5
execute unless score @s right_click_run matches 1.. as @s[nbt={Inventory:[{Slot:-106b,tag:{type:1,limit:0}}]}] run scoreboard players set @s right_click_check 0
execute unless score @s right_click_run matches 1.. as @s[nbt={SelectedItem:{tag:{type:1,limit:0,act:0}}}] run scoreboard players set @s right_click_check 0


execute unless score @s right_click_run matches 1.. as @s[nbt={SelectedItem:{tag:{id:"panling:zhan_test_bless"}}}] run scoreboard players set @s right_click_check 0
execute unless score @s right_click_run matches 1.. as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"panling:zhan_test_bless"}}]}] run scoreboard players set @s right_click_check 0
execute unless score @s right_click_run matches 1.. as @s[nbt={SelectedItem:{tag:{id:"panling:shen_test_bless"}}}] run scoreboard players set @s right_click_check 0

