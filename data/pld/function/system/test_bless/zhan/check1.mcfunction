execute unless entity @s[scores={bless_cool=0..}] as @s[scores={test_bless_act=3},nbt={SelectedItem:{tag:{act:1,type:1}},Inventory:[{Slot:-106b,tag:{id:"panling:zhan_test_bless"}}]}] run function pld:system/test_bless/zhan/main1 
execute unless entity @s[scores={bless_cool=0..}] as @s[scores={test_bless_act=3},nbt={SelectedItem:{tag:{id:"panling:zhan_test_bless"}},Inventory:[{Slot:-106b,tag:{act:1,type:1}}]}] run function pld:system/test_bless/zhan/main1 

advancement revoke @s only pld:system/test_bless/zhan1