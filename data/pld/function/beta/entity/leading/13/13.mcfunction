forceload add 1396 648 1412 648
execute unless loaded 1396 63 648 run schedule function pld:beta/entity/leading/13/13 2s
execute unless loaded 1412 63 648 run schedule function pld:beta/entity/leading/13/13 2s

#execute unless entity 9b5c0887-9615-41ef-a254-58c9fd29e47b run schedule function pld:beta/entity/leading/13/13 2s
#execute unless entity 1b31313c-f70d-4da1-8608-392ac7df6479 run schedule function pld:beta/entity/leading/13/13 2s
#execute unless entity 5bb1d336-8dc0-4fc4-9654-2ff5d88a67fc run schedule function pld:beta/entity/leading/13/13 2s
#execute unless entity 6d91c0d4-bbcc-40f0-8180-0bb33ff08977 run schedule function pld:beta/entity/leading/13/13 2s
#execute unless entity 674ce071-e6a1-4c84-a3fd-cc4b57ac771f run schedule function pld:beta/entity/leading/13/13 2s
#execute unless entity a70b7306-590c-46e3-b843-3630c1947747 run schedule function pld:beta/entity/leading/13/13 2s
#execute unless entity d9ee305c-8810-4849-bc97-ce7fe03602ec run schedule function pld:beta/entity/leading/13/13 2s
#execute if entity d9ee305c-8810-4849-bc97-ce7fe03602ec if entity 9b5c0887-9615-41ef-a254-58c9fd29e47b if entity 1b31313c-f70d-4da1-8608-392ac7df6479 if entity 5bb1d336-8dc0-4fc4-9654-2ff5d88a67fc if entity 6d91c0d4-bbcc-40f0-8180-0bb33ff08977 if entity 674ce071-e6a1-4c84-a3fd-cc4b57ac771f if entity a70b7306-590c-46e3-b843-3630c1947747 run function pld:beta/entity/leading/13/next

execute if loaded 1396 63 648 if loaded 1412 63 648 run function pld:beta/entity/leading/13/next



