#AE2 Tweaks
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import mods.embers.Stamper;
import mods.appliedenergistics2.Inscriber;

print("Intializing 'AE2 Script'...");

#Variables
var mechIngot as IIngredient[] = [
	<ore:ingotBrass>,
	<ore:ingotDawnstone>
];

var magicIngot as IIngredient[] = [
	<ore:ingotThaumium>,
	<ore:ingotBloodInfusedIron>
];

var magicPart as IIngredient[] = [
	<ore:elvenDragonstone>,
	<astralsorcery:itemcraftingcomponent:4>
];


#Press Recipes

//====== Silicon Press ======
Stamper.add(<appliedenergistics2:material:19>, <liquid:iron>*1296, <embers:plate_caminite>, <ore:itemSilicon>);

//====== Logic Press ======
for ingot in mechIngot{
	Stamper.add(<appliedenergistics2:material:15>, <liquid:iron>*1296, <embers:plate_caminite>, ingot);
}

//====== Engineering Press ======
Stamper.add(<appliedenergistics2:material:14>, <liquid:iron>*1296, <embers:plate_caminite>, <ore:manaDiamond>);

//====== Calculation Press ======
Stamper.add(<appliedenergistics2:material:13>, <liquid:iron>*1296, <embers:plate_caminite>, <ore:crystalPureCertusQuartz>);

#Inscriber Recipes

//====== Printed Logic Circuit ======
Inscriber.removeRecipe(<appliedenergistics2:material:18>);

for ingot in mechIngot{
	Inscriber.addRecipe(<appliedenergistics2:material:18>, ingot, true, <appliedenergistics2:material:15>);
}

//====== Printed Engineering Circuit ======
Inscriber.removeRecipe(<appliedenergistics2:material:17>);
Inscriber.addRecipe(<appliedenergistics2:material:17>, <ore:manaDiamond>, true, <appliedenergistics2:material:14>);

//====== Logic Processor ======
Inscriber.removeRecipe(<appliedenergistics2:material:22>);
Inscriber.addRecipe(<appliedenergistics2:material:22>, <wizardry:devil_dust>, false, <appliedenergistics2:material:18>, <appliedenergistics2:material:20>);

//====== Engineering Processor ======
Inscriber.removeRecipe(<appliedenergistics2:material:24>);
Inscriber.addRecipe(<appliedenergistics2:material:24>, <wizardry:devil_dust>, false, <appliedenergistics2:material:17>, <appliedenergistics2:material:20>);

//====== Calculation Processor ======
Inscriber.removeRecipe(<appliedenergistics2:material:23>);
Inscriber.addRecipe(<appliedenergistics2:material:23>, <wizardry:devil_dust>, false, <appliedenergistics2:material:16>, <appliedenergistics2:material:20>);

#Items/Cables

//====== Quartz Fiber ======
recipes.remove(<appliedenergistics2:part:140>);
recipes.addShaped(<appliedenergistics2:part:140>*3, [
	[<botania:managlass>, <botania:managlass>, <botania:managlass>],
	[<ore:dustQuartz>, <botania:corporeaspark> ,<ore:dustQuartz>],
	[<botania:managlass>, <botania:managlass>, <botania:managlass>]
]);

//====== Wireless Receiver ======
recipes.remove(<appliedenergistics2:material:41>);
recipes.addShaped(<appliedenergistics2:material:41>, [
	[null, <appliedenergistics2:material:9>, null],
	[<ore:ingotIron>, <appliedenergistics2:part:140>, <ore:ingotIron>],
	[null, <incorporeal:corporea_soul_core>, null]
]);

#Cores

//====== Formation Core ======
recipes.remove(<appliedenergistics2:material:43>);
recipes.addShapeless(<appliedenergistics2:material:43>*2,
	[<incorporeal:corporea_solidifier>, <ore:dustFluix>, <appliedenergistics2:material:22>]);

//====== Annihilation Core ======
recipes.remove(<appliedenergistics2:material:44>);
recipes.addShapeless(<appliedenergistics2:material:44>*2,
	[<incorporeal:corporea_retainer_decrementer> , <ore:dustFluix>, <appliedenergistics2:material:22>]);

//====== Illuminated Panel ======
recipes.remove(<appliedenergistics2:part:180>);
recipes.addShapeless(<appliedenergistics2:part:180>,
	[<appliedenergistics2:part:200>]);

recipes.addShaped(<appliedenergistics2:part:180>*3, [
	[null, <ore:dustGlowstone>, <appliedenergistics2:quartz_glass>],
	[<ore:ingotSteel>, <botania:corporeaspark:1>, <appliedenergistics2:quartz_glass>],
	[null, <ore:dustGlowstone>, <appliedenergistics2:quartz_glass>]
]);

//====== Blank Pattern ======
recipes.remove(<appliedenergistics2:material:52>);
recipes.addShaped(<appliedenergistics2:material:52>, [
	[<appliedenergistics2:quartz_glass>, <ore:nitor>, <appliedenergistics2:quartz_glass>],
	[<ore:dustGlowstone>, <ore:crystalCertusQuartz>, <ore:dustGlowstone>],
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
]);

#Storage Components

//====== 1K Storage Component ======
recipes.remove(<appliedenergistics2:material:35>);
recipes.addShaped(<appliedenergistics2:material:35>, [
	[<wizardry:devil_dust>, <appliedenergistics2:material:23>, <wizardry:devil_dust>],
	[<ore:crystalCertusQuartz>, <ore:dustAstralStarmetal>, <ore:crystalCertusQuartz>],
	[<wizardry:devil_dust>, <ore:crystalCertusQuartz>, <wizardry:devil_dust>]
]);

//====== 4K Storage Component ======
recipes.remove(<appliedenergistics2:material:36>);
for ingot in magicIngot{
	recipes.addShaped(<appliedenergistics2:material:36>, [
		[<appliedenergistics2:material:23>, ingot, <appliedenergistics2:material:23>],
		[<appliedenergistics2:material:35>, <ore:elvenPixieDust>, <appliedenergistics2:material:35>],
		[<appliedenergistics2:material:23>, <appliedenergistics2:material:35>, <appliedenergistics2:material:23>]
	]);
}

//====== 16K Storage Component ======
recipes.remove(<appliedenergistics2:material:37>);
for part in magicPart{
	recipes.addShaped(<appliedenergistics2:material:37>, [
		[<appliedenergistics2:material:22>, part, <appliedenergistics2:material:22>],
		[<appliedenergistics2:material:36>, <bloodarsenal:base_item:2>, <appliedenergistics2:material:36>],
		[<appliedenergistics2:material:22>, <appliedenergistics2:material:36>, <appliedenergistics2:material:22>]
	]);
}

//====== 64K Storage Component ======
recipes.remove(<appliedenergistics2:material:38>);
recipes.addShaped(<appliedenergistics2:material:38>, [
	[<appliedenergistics2:material:24>, <ore:ingotSupremium>, <appliedenergistics2:material:24>],
	[<appliedenergistics2:material:37>, <mysticalagriculture:crafting:29>, <appliedenergistics2:material:37>],
	[<appliedenergistics2:material:24>, <appliedenergistics2:material:37>, <appliedenergistics2:material:24>]
]);

//====== 1K Fluid Component ======
recipes.remove(<appliedenergistics2:material:54>);
recipes.addShaped(<appliedenergistics2:material:54>, [
	[<ore:crystalCertusQuartz>, <appliedenergistics2:material:23>, <ore:crystalCertusQuartz>],
	[<botania:managlass>, <minecraft:bucket>, <botania:managlass>],
	[<ore:crystalCertusQuartz>, <botania:managlass>, <ore:crystalCertusQuartz>]
]);

//====== 4K Fluid Component ======
recipes.remove(<appliedenergistics2:material:55>);
for ingot in magicIngot{
	recipes.addShaped(<appliedenergistics2:material:55>, [
		[<appliedenergistics2:material:23>, ingot, <appliedenergistics2:material:23>],
		[<appliedenergistics2:material:54>, <minecraft:bucket>, <appliedenergistics2:material:54>],
		[<appliedenergistics2:material:23>, <appliedenergistics2:material:54>, <appliedenergistics2:material:23>]
	]);
}

//====== 16K Fluid Component ======
recipes.remove(<appliedenergistics2:material:56>);
for part in magicPart{
	recipes.addShaped(<appliedenergistics2:material:56>, [
		[<appliedenergistics2:material:22>, part, <appliedenergistics2:material:22>],
		[<appliedenergistics2:material:55>, <minecraft:bucket>, <appliedenergistics2:material:55>],
		[<appliedenergistics2:material:22>, <appliedenergistics2:material:55>, <appliedenergistics2:material:22>]
	]);
}

//====== 64K Fluid Component ======
recipes.remove(<appliedenergistics2:material:57>);
recipes.addShaped(<appliedenergistics2:material:57>, [
	[<appliedenergistics2:material:24>, <ore:ingotSupremium>, <appliedenergistics2:material:24>],
	[<appliedenergistics2:material:56>, <botania:openbucket>, <appliedenergistics2:material:56>],
	[<appliedenergistics2:material:24>, <appliedenergistics2:material:56>, <appliedenergistics2:material:24>]
]);

#Machines

//====== Inscriber ======
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped(<appliedenergistics2:inscriber>, [
	[<ore:ingotSteel>, <minecraft:sticky_piston>, <ore:ingotSteel>],
	[<ore:crystalFluix>, null, <ore:ingotSteel>],
	[<ore:ingotSteel>, <minecraft:sticky_piston>, <ore:ingotSteel>]
]);

//====== ME Drive ======
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, [
	[<ore:ingotSteel>, <appliedenergistics2:material:24>, <ore:ingotSteel>],
	[<appliedenergistics2:part:16>, <ore:chestObsidian>, <appliedenergistics2:part:16>],
	[<ore:ingotSteel>, <appliedenergistics2:material:24>, <ore:ingotSteel>]
]);

//====== ME Chest ======
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [
	[<botania:managlass>, <appliedenergistics2:part:380>, <botania:managlass>],
	[<appliedenergistics2:part:16>, <ore:chestObsidian>, <appliedenergistics2:part:16>],
	[<ore:ingotSteel>, <ore:crystalFluix>, <ore:ingotSteel>]
]);

//====== ME Controller ======
recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped(<appliedenergistics2:controller>, [
	[<thaumcraft:stone_arcane>, <ore:crystalFluix>, <thaumcraft:stone_arcane>],
	[<ore:crystalFluix>, <botania:corporeaindex>, <ore:crystalFluix>],
	[<thaumcraft:stone_arcane>, <ore:crystalFluix>, <thaumcraft:stone_arcane>]
]);

#Terminals

//====== Crafting Terminal ======
recipes.remove(<appliedenergistics2:part:360>);
recipes.addShapeless(<appliedenergistics2:part:360>,
	[<appliedenergistics2:part:380>, <botania:craftinghalo>, <appliedenergistics2:material:23>]);

//====== Pattern Terminal ======
recipes.remove(<appliedenergistics2:part:340>);
recipes.addShapeless(<appliedenergistics2:part:340>,
	[<appliedenergistics2:material:24>, <appliedenergistics2:part:380>, <appliedenergistics2:material:52>]);

//====== Fluid Terminal ======
recipes.remove(<appliedenergistics2:part:520>);
recipes.addShapeless(<appliedenergistics2:part:520>,
	[<appliedenergistics2:part:380>, <botania:openbucket>, <appliedenergistics2:material:24>]);

print("Intialized 'AE2 Script'...");
