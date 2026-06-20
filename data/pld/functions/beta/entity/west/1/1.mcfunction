#区块强加载
forceload add -199 -169 -218 -183
forceload add -190 -173 -188 -179
forceload add -198 -194
#-13 -11
execute unless loaded -197 75 -169 run schedule function pld:beta/entity/west/1/1 2s
#-13 -12
execute unless loaded -197 75 -186 run schedule function pld:beta/entity/west/1/1 2s
#-12 -11 
execute unless loaded -187 75 -172 run schedule function pld:beta/entity/west/1/1 2s
#-12 -12
execute unless loaded -187 75 -179 run schedule function pld:beta/entity/west/1/1 2s
#-13 -13
execute unless loaded -197 75 -196 run schedule function pld:beta/entity/west/1/1 2s
#-14 -11
execute unless loaded -215 35 -172 run schedule function pld:beta/entity/west/1/1 2s
#-14 -12
execute unless loaded -215 35 -186 run schedule function pld:beta/entity/west/1/1 2s

execute if loaded -197 75 -169 if loaded -197 75 -186 if loaded -187 75 -172 if loaded -187 75 -179 if loaded -197 75 -196 if loaded -215 35 -172 if loaded -215 35 -186 run function pld:beta/entity/west/1/next

#execute unless entity edeb846a-aaf7-4ca7-9d19-de9254e93634 run schedule function pld:beta/entity/west/1/1 2s
#execute unless entity ec182f6c-b263-4e2d-9884-03ba9f65f4b9 run schedule function pld:beta/entity/west/1/1 2s
#execute unless entity 1e7bc443-ee03-47e3-a05b-1319b4aeb05a run schedule function pld:beta/entity/west/1/1 2s

#execute if entity edeb846a-aaf7-4ca7-9d19-de9254e93634 if entity ec182f6c-b263-4e2d-9884-03ba9f65f4b9 if entity 1e7bc443-ee03-47e3-a05b-1319b4aeb05a run function pld:beta/entity/west/1/a

