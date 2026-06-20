forceload add 34 148
execute unless loaded 34 63 148 run schedule function pld:beta/entity/middle/1/1 2s
#execute unless entity ea6babdc-911b-4626-bf13-779a411bd129 run schedule function pld:beta/entity/middle/1/1 2s
execute if loaded 34 63 148 run function pld:beta/entity/middle/1/next
#execute if entity ea6babdc-911b-4626-bf13-779a411bd129 run function pld:beta/entity/middle/1/next