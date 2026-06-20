forceload add 1306 24
execute unless loaded 1306 63 24 run schedule function pld:beta/entity/leading/5/5 2s
#execute unless entity b0e871a5-f2cd-41fc-b255-7af15289d683 run schedule function pld:beta/entity/leading/5/5 2s
#execute unless entity 1dcbf8f6-94c7-4b4f-b6d5-fee1844495f2 run schedule function pld:beta/entity/leading/5/5 2s
execute if loaded 1306 63 24 run function pld:beta/entity/leading/5/next

#execute if entity b0e871a5-f2cd-41fc-b255-7af15289d683 if entity 1dcbf8f6-94c7-4b4f-b6d5-fee1844495f2 run function pld:beta/entity/leading/5/next
