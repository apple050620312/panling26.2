scoreboard players reset #updating int
scoreboard players set #updated int 1
function pld:beta/set_version

tellraw @a [{"translate":"pl.info.updated"},{"score":{"name": "#version_p1","objective": "int"},"color": "gold"},{"text":".","color": "gold"},{"score":{"name": "#version_p2","objective": "int"},"color": "gold"},{"text":".","color": "gold"},{"score":{"name": "#version_p3","objective": "int"},"color": "gold"}]
bossbar remove pl:load
execute unless score #version int = #newest_version int run function pld:beta/versionload
execute if score #version int = #newest_version int run tellraw @a {"translate":"pl.info.newest_version"}

