forceload add 1300 648 1316 648
execute unless loaded 1300 63 648 run schedule function pld:beta/entity/leading/11/11 2s
execute unless loaded 1316 63 648 run schedule function pld:beta/entity/leading/11/11 2s

#execute unless entity e829da29-62b7-4d92-b06a-52671053760e run schedule function pld:beta/entity/leading/11/11 2s
#execute unless entity acc88508-4b66-49a9-9122-b5e6669e410b run schedule function pld:beta/entity/leading/11/11 2s
#execute unless entity 6f86366f-3055-4111-bfac-8fcb454966b1 run schedule function pld:beta/entity/leading/11/11 2s
#execute unless entity 0f5e9dd2-e018-4686-a0f8-43d4604a7184 run schedule function pld:beta/entity/leading/11/11 2s
#execute unless entity d59ece6d-1516-40b5-91fd-0296e49bec10 run schedule function pld:beta/entity/leading/11/11 2s
#execute unless entity 0637c79e-f5dc-487a-9bee-5bee3a7c575c run schedule function pld:beta/entity/leading/11/11 2s
#execute unless entity a2d21b58-619c-4eda-be58-d4da13e05f21 run schedule function pld:beta/entity/leading/11/11 2s
#execute unless entity fa46ce35-3949-42af-9de9-a8d68ecc81fd run schedule function pld:beta/entity/leading/11/11 2s

execute if loaded 1300 63 648 if loaded 1316 63 648 run function pld:beta/entity/leading/11/next
#execute if entity fa46ce35-3949-42af-9de9-a8d68ecc81fd if entity a2d21b58-619c-4eda-be58-d4da13e05f21 if entity e829da29-62b7-4d92-b06a-52671053760e if entity acc88508-4b66-49a9-9122-b5e6669e410b if entity 6f86366f-3055-4111-bfac-8fcb454966b1 if entity 0f5e9dd2-e018-4686-a0f8-43d4604a7184 if entity d59ece6d-1516-40b5-91fd-0296e49bec10 if entity 0637c79e-f5dc-487a-9bee-5bee3a7c575c run function pld:beta/entity/leading/11/next
