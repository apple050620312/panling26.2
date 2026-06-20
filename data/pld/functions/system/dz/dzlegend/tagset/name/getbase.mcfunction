#根据记分板获得名称 
# #system temp = limit
# #system temp2 = element
# #system temp3 = slot
execute if score #system temp matches 0 run function pld:system/dz/dzlegend/tagset/name/limit0/check
execute if score #system temp matches 1 run function pld:system/dz/dzlegend/tagset/name/limit1/check
execute if score #system temp matches 2 run function pld:system/dz/dzlegend/tagset/name/limit2/check

