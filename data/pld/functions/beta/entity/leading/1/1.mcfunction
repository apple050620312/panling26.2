forceload add 1315 39
execute unless loaded 1315 63 39 run schedule function pld:beta/entity/leading/1/1 2s
#execute unless entity bc96acb9-4ef7-4271-b633-d5fd6dbc4737 run schedule function pld:beta/entity/leading/1/1 2s
#execute unless entity cba26e59-4e3e-41f8-a95b-08b60eab2424 run schedule function pld:beta/entity/leading/1/1 2s
#execute unless entity 641ae78d-67df-47a7-8bd9-92b821f8744e run schedule function pld:beta/entity/leading/1/1 2s
#execute unless entity afb36308-905f-4004-93ca-88574faa7e68 run schedule function pld:beta/entity/leading/1/1 2s
#execute unless entity 2f16291e-95b1-4cd7-8439-705ea3a77342 run schedule function pld:beta/entity/leading/1/1 2s
#execute unless entity 5f7a3a90-6b09-4b3b-8929-071ce457e6e0 run schedule function pld:beta/entity/leading/1/1 2s


execute if loaded 1315 63 39 run function pld:beta/entity/leading/1/next
#execute if entity bc96acb9-4ef7-4271-b633-d5fd6dbc4737 if entity cba26e59-4e3e-41f8-a95b-08b60eab2424 if entity 641ae78d-67df-47a7-8bd9-92b821f8744e if entity afb36308-905f-4004-93ca-88574faa7e68 if entity 2f16291e-95b1-4cd7-8439-705ea3a77342 if entity 5f7a3a90-6b09-4b3b-8929-071ce457e6e0 run function pld:beta/entity/leading/1/next
