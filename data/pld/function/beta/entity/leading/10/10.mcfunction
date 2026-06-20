forceload add 1252 648 1268 648
execute unless loaded 1252 63 648 run schedule function pld:beta/entity/leading/10/10 2s
execute unless loaded 1268 63 648 run schedule function pld:beta/entity/leading/10/10 2s

#execute unless entity 22698c05-a6ea-4a55-a9f0-0e3ad97e3fd3 run schedule function pld:beta/entity/leading/10/10 2s

#execute unless entity 75aedd86-e2a6-45fd-a0e7-00cb2620a2ab run schedule function pld:beta/entity/leading/10/10 2s

#execute unless entity 9f5f48b8-261b-4322-9363-9cabd1527efb run schedule function pld:beta/entity/leading/10/10 2s

#execute unless entity ba5ddfee-f171-4b12-9d03-8555c636e339 run schedule function pld:beta/entity/leading/10/10 2s

#execute unless entity fe875678-d756-4faf-8994-82281e63f2cd run schedule function pld:beta/entity/leading/10/10 2s

#execute unless entity 3168edeb-3350-40c4-80cd-8dfffa87a3ee run schedule function pld:beta/entity/leading/10/10 2s

#execute unless entity bf467a75-8c49-46c3-9e6d-b5aa839488fb run schedule function pld:beta/entity/leading/10/10 2s

execute if loaded 1252 63 648 if loaded 1268 63 648 run function pld:beta/entity/leading/10/next

#execute if entity bf467a75-8c49-46c3-9e6d-b5aa839488fb if entity 22698c05-a6ea-4a55-a9f0-0e3ad97e3fd3 if entity 75aedd86-e2a6-45fd-a0e7-00cb2620a2ab if entity 9f5f48b8-261b-4322-9363-9cabd1527efb if entity ba5ddfee-f171-4b12-9d03-8555c636e339 if entity fe875678-d756-4faf-8994-82281e63f2cd if entity 3168edeb-3350-40c4-80cd-8dfffa87a3ee run function pld:beta/entity/leading/10/next
