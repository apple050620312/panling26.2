#区块强加载
forceload add 1336 23 1336 56
#要做的事
setblock 1333 76 33 air
data merge block 1330 78 39 {front_text:{messages:['{"translate":"pl.sign.information1.text1"}','{"translate":"pl.sign.information1.text2"}','{"translate":"pl.sign.information1.text3"}','{"translate":"pl.sign.information1.text4"}']}}
data merge block 1330 78 40 {front_text:{messages:['{"translate":"pl.sign.information2.text1"}','{"translate":"pl.sign.information2.text2"}','{"translate":"pl.sign.information2.text3"}','{"translate":"pl.sign.information2.text4"}']}}
data merge block 1330 78 41 {front_text:{messages:['{"translate":"pl.sign.information3.text1"}','{"translate":"pl.sign.information3.text2"}','{"translate":"pl.sign.information3.text3"}','{"translate":"pl.sign.information3.text4"}']}}
data merge block 1330 78 42 {front_text:{messages:['{"translate":"pl.sign.information4.text1"}','{"translate":"pl.sign.information4.text2"}','{"translate":"pl.sign.information4.text3"}','{"translate":"pl.sign.information4.text4"}']}}
data merge block 1330 78 43 {front_text:{messages:['{"translate":"pl.sign.information5.text1"}','{"translate":"pl.sign.information5.text2"}','{"translate":"pl.sign.information5.text3"}','{"translate":"pl.sign.information5.text4"}']}}
data merge block 1330 78 44 {front_text:{messages:['{"translate":"pl.sign.information6.text1"}','{"translate":"pl.sign.information6.text2"}','{"translate":"pl.sign.information6.text3"}','{"translate":"pl.sign.information6.text4"}']}}
data merge block 1330 78 45 {front_text:{messages:['{"translate":"pl.sign.information7.text1"}','{"translate":"pl.sign.information7.text2"}','{"translate":"pl.sign.information7.text3"}','{"translate":"pl.sign.information7.text4"}']}}
setblock 1332 76 54 air
#区块卸载
forceload remove 1336 23 1336 56
#记分板数值增加
function pld:beta/chunk/count

#链接下一个chunk
schedule function pld:beta/chunk/leading/84_0 1t
