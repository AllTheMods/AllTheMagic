#Furnus Tweaks
print("Furnus Initializing....");

//====== Furnus ======
recipes.remove(<furnus:furnus>);
recipes.addShaped(<furnus:furnus>, [
	[<ore:ingotSteel>, <minecraft:brick_block>, <ore:ingotSteel>],
	[<minecraft:brick_block>, <mysticalagriculture:prudentium_furnace>, <minecraft:brick_block>],
	[<minecraft:coal>, <minecraft:brick_block>, <minecraft:coal>]
]);

//====== Pulvus ======
recipes.remove(<furnus:pulvus>);
recipes.addShaped(<furnus:pulvus>, [
	[<ore:ingotSteel>, <ore:sandstone>, <ore:ingotSteel>],
	[<ore:sandstone>, <mysticalagriculture:prudentium_furnace>, <ore:sandstone>],
	[<ore:flint>, <ore:sandstone>, <ore:flint>]
]);

//====== Speed Upgrade ======
recipes.remove(<furnus:upgrade>);
recipes.addShaped(<furnus:upgrade>, [
	[null, <ore:plateGold>, null],
	[<wizardry:devil_dust>, <ore:ingotSteel>, <wizardry:devil_dust>],
	[null, <mysticalagriculture:growth_accelerator>, null]
]);

//====== Effiency Upgrade ======
recipes.remove(<furnus:upgrade:1>);
recipes.addShaped(<furnus:upgrade:1>, [
	[null, <ore:quartzMana>, null],
	[<naturesaura:infused_iron>, <ore:ingotSteel>, <naturesaura:infused_iron>],
	[null, <bloodarsenal:blood_infused_glowstone>, null]
]);

//====== IO Upgrade ======
recipes.remove(<furnus:upgrade:2>);
recipes.addShaped(<furnus:upgrade:2>, [
	[null, <minecraft:piston>, null],
	[null, <ore:ingotSteel>, null],
	[null, <embers:vacuum>, null]
]);

//====== Slot Upgrade ======
recipes.remove(<furnus:upgrade:3>);
recipes.addShaped(<furnus:upgrade:3>, [
	[null, <ore:elvenDragonstone>, null],
	[null, <ore:ingotShadowium>, null],
	[null, <ore:elvenDragonstone>, null]
]);

//====== Energy Upgrade ======
recipes.remove(<furnus:upgrade:6>);
recipes.addShaped(<furnus:upgrade:6>, [
	[null, <embers:ember_receiver>, null],
	[<ore:blockDawnstone>, <ore:ingotSteel>, <ore:blockDawnstone>],
	[null, <embers:copper_cell>, null]
]);

print("Furnus Intialized");
