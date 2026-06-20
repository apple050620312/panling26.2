execute if block 805 24 -70 hopper{Items:[{Slot:0b,components:{custom_data:{id:"panling:re1"}}}]} as @p[x=805,y=25,z=-70,distance=..10] unless score @s ex_ren matches 1 run function pld:system/ex_ren/re_finish
data merge block 805 24 -70 {Items:[]}
data merge block 805 25 -70 {Items:[]}