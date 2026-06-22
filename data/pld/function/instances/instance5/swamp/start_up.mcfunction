scoreboard players set @s instance5_swamp 1
bossbar set pl:instance5_swamp visible true

tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.swamp"}
clone 3139 123 -1824 3179 123 -1806 3139 128 -1824
clone 3138 123 -1840 3179 123 -1825 3138 128 -1840
clone 3145 125 -1816 3145 125 -1816 3145 127 -1816
clone 3173 125 -1834 3173 125 -1834 3173 127 -1834
clone 3138 123 -1865 3164 123 -1841 3138 128 -1865
clone 3146 125 -1857 3146 125 -1857 3146 127 -1857
clone 3087 125 -1794 3087 125 -1794 3087 127 -1794
clone 3079 123 -1799 3118 123 -1788 3079 128 -1799
scoreboard players set #system instance5_sppos1 1
scoreboard players set #system instance5_sppos2 1
scoreboard players set #system instance5_sppos3 1
scoreboard players set #system instance5_sppos4 1
data merge block 3173 127 -1834 {Items:[{slot:0,id:"minecraft:slime_ball",count:48,components:{id:"panling:instance5_dirt",display:{Name:'{"translate":"pl.item.name.instance5_dirt"}',Lore:['{"translate":"pl.item.lore.instance5_dirta"}','{"translate":"pl.item.lore.instance5_dirtb"}']}}},{slot:1,id:"minecraft:minecart",count:1},{slot:2,id:"minecraft:minecart",count:1},{slot:3,id:"minecraft:minecart",count:1},{slot:4,id:"minecraft:minecart",count:1}]}
data merge block 3146 127 -1857 {Items:[{slot:0,id:"minecraft:slime_ball",count:48,components:{id:"panling:instance5_dirt",display:{Name:'{"translate":"pl.item.name.instance5_dirt"}',Lore:['{"translate":"pl.item.lore.instance5_dirta"}','{"translate":"pl.item.lore.instance5_dirtb"}']}}},{slot:1,id:"minecraft:minecart",count:1},{slot:2,id:"minecraft:minecart",count:1},{slot:3,id:"minecraft:minecart",count:1},{slot:4,id:"minecraft:minecart",count:1}]}
data merge block 3145 127 -1816 {Items:[{slot:0,id:"minecraft:slime_ball",count:48,components:{id:"panling:instance5_dirt",display:{Name:'{"translate":"pl.item.name.instance5_dirt"}',Lore:['{"translate":"pl.item.lore.instance5_dirta"}','{"translate":"pl.item.lore.instance5_dirtb"}']}}},{slot:1,id:"minecraft:minecart",count:1},{slot:2,id:"minecraft:minecart",count:1},{slot:3,id:"minecraft:minecart",count:1},{slot:4,id:"minecraft:minecart",count:1}]}
data merge block 3087 127 -1794 {Items:[{slot:0,id:"minecraft:slime_ball",count:48,components:{id:"panling:instance5_dirt",display:{Name:'{"translate":"pl.item.name.instance5_dirt"}',Lore:['{"translate":"pl.item.lore.instance5_dirta"}','{"translate":"pl.item.lore.instance5_dirtb"}']}}},{slot:1,id:"minecraft:minecart",count:1},{slot:2,id:"minecraft:minecart",count:1},{slot:3,id:"minecraft:minecart",count:1},{slot:4,id:"minecraft:minecart",count:1}]}

schedule clear pld:instances/instance5/swamp/action 
function pld:instances/instance5/swamp/action
schedule clear pld:instances/instance5/swamp/effect
function pld:instances/instance5/swamp/effect