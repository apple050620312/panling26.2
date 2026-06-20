forceload add 1348 648 1364 648
execute unless loaded 1348 63 648 run schedule function pld:beta/entity/leading/12/12 2s
execute unless loaded 1364 63 648 run schedule function pld:beta/entity/leading/12/12 2s

#execute unless entity 5acd6b8c-aaee-47ba-8cc7-df2f1f241e93 run schedule function pld:beta/entity/leading/12/12 2s

#execute unless entity 0b91e904-16e2-4f94-8653-eaeb5852cda9 run schedule function pld:beta/entity/leading/12/12 2s

#execute unless entity c76fcf05-5c62-471c-a12f-f469c466a4d8 run schedule function pld:beta/entity/leading/12/12 2s

#execute unless entity 94db36b5-3e1a-446f-8eee-a60225fbfbe8 run schedule function pld:beta/entity/leading/12/12 2s

#execute unless entity ffea0d9c-b974-4dfc-9816-c880f63b81fa run schedule function pld:beta/entity/leading/12/12 2s

#execute unless entity f44e06e8-7b30-4938-aeae-f94da539231b run schedule function pld:beta/entity/leading/12/12 2s

#execute unless entity 42f997e4-3e53-48e1-8e29-ff217bee1aea run schedule function pld:beta/entity/leading/12/12 2s

#execute unless entity 0b2dd284-9d4c-4430-976a-a87612f60b75 run schedule function pld:beta/entity/leading/12/12 2s

#execute unless entity f54ede96-85f9-4f31-8574-8fe2ccb2e906 run schedule function pld:beta/entity/leading/12/12 2s

execute if loaded 1348 63 648 if loaded 1364 63 648 run function pld:beta/entity/leading/12/next

#execute if entity f54ede96-85f9-4f31-8574-8fe2ccb2e906 if entity 0b2dd284-9d4c-4430-976a-a87612f60b75 if entity 42f997e4-3e53-48e1-8e29-ff217bee1aea if entity 5acd6b8c-aaee-47ba-8cc7-df2f1f241e93 if entity 0b91e904-16e2-4f94-8653-eaeb5852cda9 if entity c76fcf05-5c62-471c-a12f-f469c466a4d8 if entity 94db36b5-3e1a-446f-8eee-a60225fbfbe8 if entity ffea0d9c-b974-4dfc-9816-c880f63b81fa if entity f44e06e8-7b30-4938-aeae-f94da539231b run function pld:beta/entity/leading/12/next
