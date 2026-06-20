#function pld:test/ren/fire/tpout

effect give @a[tag=honor_enchant2] regeneration 5 0
execute if score #system pvpevent matches 6 run effect give @a[team=attack,scores={up_bless=1}] absorption 5 0

#花冠-燃放烟花
execute as @a[nbt={Inventory:[{Slot:103b,tag:{id:"panling:flower_helmet"}}]}] at @s positioned ~ ~3 ~ run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680]},{Type:4,Flicker:1,Colors:[I;16774635]},{Flicker:1,Colors:[I;16711629]},{Flicker:1,Colors:[I;14090159]},{Flicker:1,Colors:[I;7583743]},{Flicker:1,Colors:[I;5723647]},{Type:1,Colors:[I;10303487]}]}}}}

function pld:instances/ture_pangu/5s

schedule function pld:ticks/5s 5s

