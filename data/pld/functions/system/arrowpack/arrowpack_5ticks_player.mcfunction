#显示
execute as @s[nbt={SelectedItem:{tag:{id:"panling:arrowpack"}}}] run title @s actionbar {"text":"","extra":[{"translate":"pl.info.arrowinpack1","color":"red","bold":"true"},{"score":{"name":"@s","objective":"arrowinpack"}},{"translate":"pl.info.arrowinpack2","color":"red","bold":"true"}]}
#自动补箭
execute if score @s arrowpack_auto matches 1 as @s[nbt={Inventory:[{tag:{id:"panling:arrowpack"}}]}] run function pld:system/arrowpack/arrowpack_auto

