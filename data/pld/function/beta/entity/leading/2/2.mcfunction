forceload add 1316 48
execute unless loaded 1316 63 48 run schedule function pld:beta/entity/leading/2/2 2s
#execute unless entity 35cd3043-2f53-408b-a3cb-f5abacf7493e run schedule function pld:beta/entity/leading/2/2 2s
#execute unless entity 5174e2e7-ade4-41e1-9deb-a7f210059a95 run schedule function pld:beta/entity/leading/2/2 2s


execute if loaded 1316 63 48 run function pld:beta/entity/leading/2/next
#execute if entity 35cd3043-2f53-408b-a3cb-f5abacf7493e if entity 5174e2e7-ade4-41e1-9deb-a7f210059a95 run function pld:beta/entity/leading/2/next
