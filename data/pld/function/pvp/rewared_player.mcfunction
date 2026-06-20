#悬赏玩家
#execute if score #system pvpevent matches 2 as @s[team=attack] run tellraw @a[scores={inpvp=1}] [{"translate":"pl.info.kill_rewarded_all11a"},{"selector":"@s"},{"translate":"pl.info.kill_rewarded_all2"}]
#execute if score #system pvpevent matches 2 as @s[team=defence] run tellraw @a[scores={inpvp=1}] [{"translate":"pl.info.kill_rewarded_all11d"},{"selector":"@s"},{"translate":"pl.info.kill_rewarded_all2"}]

execute if score #system pvpevent matches 4 as @s[team=attack] run tellraw @a[scores={inpvp=1}] [{"translate":"pl.info.kill_rewarded_all21a"},{"selector":"@s"},{"translate":"pl.info.kill_rewarded_all2"}]
execute if score #system pvpevent matches 4 as @s[team=defence] run tellraw @a[scores={inpvp=1}] [{"translate":"pl.info.kill_rewarded_all21d"},{"selector":"@s"},{"translate":"pl.info.kill_rewarded_all2"}]
execute if score #system pvpevent matches 6 as @s[team=attack] run tellraw @a[scores={inpvp=1}] [{"translate":"pl.info.kill_rewarded_all31a"},{"selector":"@s"},{"translate":"pl.info.kill_rewarded_all2"}]
execute if score #system pvpevent matches 6 as @s[team=defence] run tellraw @a[scores={inpvp=1}] [{"translate":"pl.info.kill_rewarded_all31d"},{"selector":"@s"},{"translate":"pl.info.kill_rewarded_all2"}]

tellraw @s {"translate":"pl.info.kill_rewarded"}