#Refined Storage Tweaks
import crafttweaker.item.IIngredient;
import mods.embers.Stamper;

print("Intializing 'Refined Storage'...");

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

#Crafting Ingredients

//====== Quartz Enriched Iron ======
recipes.removeShaped(<refinedstorage:quartz_enriched_iron>, [
	[<minecraft:iron_ingot>, <minecraft:iron_ingot>],
	[<minecraft:iron_ingot>, <minecraft:quartz>]
]);

recipes.addShaped(<refinedstorage:quartz_enriched_iron> *4,	[
	[<ore:ingotSteel>, <ore:ingotSteel>],
	[<ore:ingotSteel>, <ore:quartzMana>]
]);

//====== Machine Casing ======
recipes.remove(<refinedstorage:machine_casing>);
recipes.addShaped(<refinedstorage:machine_casing>, [
	[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
	[<refinedstorage:quartz_enriched_iron>, <botania:corporeaspark:1>, <refinedstorage:quartz_enriched_iron>],
	[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]
]);

#Storage Parts

//====== 1K Storage Part ======
recipes.remove(<refinedstorage:storage_part>);
recipes.addShaped(<refinedstorage:storage_part>, [
	[<ore:itemSilicon>, <refinedstorage:quartz_enriched_iron>, <ore:itemSilicon>],
	[<botania:managlass>, <ore:dustAstralStarmetal>, <botania:managlass>],
	[<ore:itemSilicon>, <botania:managlass>, <ore:itemSilicon>]
]);

//====== 4K Storage Part ======
for ingot in magicIngot{
	recipes.remove(<refinedstorage:storage_part:1>);
	recipes.addShaped(<refinedstorage:storage_part:1>, [
		[<refinedstorage:processor:3>, ingot, <refinedstorage:processor:3>],
		[<refinedstorage:storage_part>, <ore:elvenPixieDust>, <refinedstorage:storage_part>],
		[<refinedstorage:processor:3>, <refinedstorage:storage_part>, <refinedstorage:processor:3>]
	]);
}

//====== 16K Storage Part ======
for part in magicPart{
	recipes.remove(<refinedstorage:storage_part:2>);
	recipes.addShaped(<refinedstorage:storage_part:2>, [
		[<refinedstorage:processor:4>, part, <refinedstorage:processor:4>],
		[<refinedstorage:storage_part:1>, <bloodarsenal:base_item:2>, <refinedstorage:storage_part:1>],
		[<refinedstorage:processor:4>, <refinedstorage:storage_part:1>, <refinedstorage:processor:4>]
	]);
}

//====== 64K Storage Part ======
recipes.remove(<refinedstorage:storage_part:3>);
recipes.addShaped(<refinedstorage:storage_part:3>, [
	[<refinedstorage:processor:5>, <ore:ingotSupremium>, <refinedstorage:processor:5>],
	[<refinedstorage:storage_part:2>, <mysticalagriculture:crafting:29>, <refinedstorage:storage_part:2>],
	[<refinedstorage:processor:5>, <refinedstorage:storage_part:2>, <refinedstorage:processor:5>]
]);

//====== 64K Fluid Storage Part ======
recipes.remove(<refinedstorage:fluid_storage_part>);
recipes.addShaped(<refinedstorage:fluid_storage_part>, [
	[<ore:itemSilicon>, <refinedstorage:quartz_enriched_iron>, <ore:itemSilicon>],
	[<botania:managlass>, <minecraft:bucket>, <botania:managlass>],
	[<ore:itemSilicon>, <botania:managlass>, <ore:itemSilicon>]
]);

//====== 256K Fluid Storage Part ======
for ingot in magicIngot{
	recipes.remove(<refinedstorage:fluid_storage_part:1>);
	recipes.addShaped(<refinedstorage:fluid_storage_part:1>, [
		[<refinedstorage:processor:3>, ingot, <refinedstorage:processor:3>],
		[<refinedstorage:fluid_storage_part>, <minecraft:bucket>, <refinedstorage:fluid_storage_part>],
		[<refinedstorage:processor:3>, <refinedstorage:fluid_storage_part>, <refinedstorage:processor:3>]
	]);
}

//====== 1024K Fluid Storage Part ======
for part in magicPart{
	recipes.remove(<refinedstorage:fluid_storage_part:2>);
	recipes.addShaped(<refinedstorage:fluid_storage_part:2>, [
		[<refinedstorage:processor:4>, part, <refinedstorage:processor:4>],
		[<refinedstorage:fluid_storage_part:1>, <minecraft:bucket>, <refinedstorage:fluid_storage_part:1>],
		[<refinedstorage:processor:4>, <refinedstorage:fluid_storage_part:1>, <refinedstorage:processor:4>]
	]);
}

//====== 4096K Fluid Storage Part ======
recipes.remove(<refinedstorage:fluid_storage_part:3>);
recipes.addShaped(<refinedstorage:fluid_storage_part:3>, [
	[<refinedstorage:processor:5>, <ore:ingotSupremium>, <refinedstorage:processor:5>],
	[<refinedstorage:fluid_storage_part:2>, <botania:openbucket>, <refinedstorage:fluid_storage_part:2>],
	[<refinedstorage:processor:5>, <refinedstorage:fluid_storage_part:2>, <refinedstorage:processor:5>]
]);

#Cut Processors

//====== Basic ======
recipes.remove(<refinedstorage:processor>);
recipes.addShapeless(<refinedstorage:processor> ,
	[<refinedstorage:cutting_tool>.anyDamage() , <ore:ingotSteel> , <ore:itemSilicon>, <wizardry:devil_dust>]);

//====== Improved ======
for ingot in mechIngot{
	recipes.remove(<refinedstorage:processor:1>);
	recipes.addShapeless(<refinedstorage:processor:1> ,
		[<refinedstorage:cutting_tool>.anyDamage() , ingot, <ore:itemSilicon>, <wizardry:devil_dust>]
	);
}

//====== Advanced ======
recipes.remove(<refinedstorage:processor:2>);
recipes.addShapeless(<refinedstorage:processor:2> ,
	[<refinedstorage:cutting_tool>.anyDamage() , <ore:manaDiamond>, <ore:itemSilicon>, <wizardry:devil_dust>]);

#Processed Processors

//====== Basic ======
furnace.remove(<refinedstorage:processor:3>);
Stamper.add(<refinedstorage:processor:3> , <liquid:alchemical_redstone>*144, <ore:itemSilicon>, <refinedstorage:processor>);

//====== Improved ======
furnace.remove(<refinedstorage:processor:4>);
Stamper.add(<refinedstorage:processor:4> , <liquid:alchemical_redstone>*144, <ore:itemSilicon>, <refinedstorage:processor:1>);

//====== Advanced ======
furnace.remove(<refinedstorage:processor:5>);
Stamper.add(<refinedstorage:processor:5>, <liquid:alchemical_redstone>*144, <ore:itemSilicon>, <refinedstorage:processor:2>);

#Machines

//====== Controller ======
recipes.remove(<refinedstorage:controller>);
recipes.addShaped(<refinedstorage:controller>, [
	[<refinedstorage:quartz_enriched_iron>, <botania:corporeaindex>, <refinedstorage:quartz_enriched_iron>],
	[<ore:itemSilicon>, <refinedstorage:machine_casing>, <ore:itemSilicon>],
	[<refinedstorage:quartz_enriched_iron>, <ore:itemSilicon>, <refinedstorage:quartz_enriched_iron>]
]);

//====== Disk Drive ======
recipes.remove(<refinedstorage:disk_drive>);
recipes.addShaped(<refinedstorage:disk_drive>, [
	[<refinedstorage:quartz_enriched_iron>, <ore:chestObsidian>, <refinedstorage:quartz_enriched_iron>],
	[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <refinedstorage:quartz_enriched_iron>],
	[<refinedstorage:quartz_enriched_iron>, null, <refinedstorage:quartz_enriched_iron>]
]);

//====== Grid ======
recipes.remove(<refinedstorage:grid>);
recipes.addShaped(<refinedstorage:grid>, [
	[<refinedstorage:processor:4>, <refinedstorage:core>, <botania:managlass>],
	[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <botania:managlass>],
	[<refinedstorage:processor:4>, <refinedstorage:core:1>, <botania:managlass>]
]);

//====== Crafting Grid ======
recipes.remove(<refinedstorage:grid:1>);
recipes.addShapeless(<refinedstorage:grid:1>,
	[<refinedstorage:grid>, <refinedstorage:processor:5>, <botania:craftinghalo>]);

//====== Fluid Grid ======
recipes.remove(<refinedstorage:grid:3>);
recipes.addShapeless(<refinedstorage:grid:3>,
	[<refinedstorage:grid>, <refinedstorage:processor:5>, <botania:openbucket>]);

#Wireless Grid

//====== Wireless Grid =======
recipes.remove(<refinedstorage:wireless_grid>);
recipes.addShaped(<refinedstorage:wireless_grid>, [
	[<refinedstorage:quartz_enriched_iron>, <incorporeal:corporea_soul_core>, <refinedstorage:quartz_enriched_iron>],
	[<refinedstorage:quartz_enriched_iron>, <refinedstorage:grid>, <refinedstorage:quartz_enriched_iron>],
	[<refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:5>, <refinedstorage:quartz_enriched_iron>]
]);

//====== Wireless Crafting Grid ======
recipes.remove(<refinedstorageaddons:wireless_crafting_grid>);
recipes.addShapeless(<refinedstorageaddons:wireless_crafting_grid>,
	[<refinedstorage:wireless_grid>, <refinedstorage:wireless_transmitter>, <refinedstorage:grid:1>
]);

#RS Items

//====== Pattern ======
recipes.remove(<refinedstorage:pattern>);
recipes.addShaped(<refinedstorage:pattern>, [
	[<botania:managlass>, <ore:dustRedstone>, <botania:managlass>],
	[<ore:dustRedstone>, <ore:nitor>, <ore:dustRedstone>],
	[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]
]);

//====== Storage Housing ======
recipes.remove(<refinedstorage:storage_housing>);
recipes.addShaped(<refinedstorage:storage_housing>, [
	[<botania:managlass>, <wizardry:devil_dust>, <botania:managlass>],
	[<wizardry:devil_dust>, null, <wizardry:devil_dust>],
	[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]
]);

//====== Cables ======
recipes.remove(<refinedstorage:cable>);
recipes.addShaped(<refinedstorage:cable>*12, [
	[<refinedstorage:quartz_enriched_iron> , <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
	[<botania:managlass>, <botania:corporeaspark>, <botania:managlass>],
	[<refinedstorage:quartz_enriched_iron> , <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]
]);

//====== Construction Core ======
recipes.remove(<refinedstorage:core>);
recipes.addShapeless(<refinedstorage:core>,
	[<refinedstorage:processor:3>, <incorporeal:corporea_solidifier>]);

//====== Destruction Core =======
recipes.remove(<refinedstorage:core:1>);
recipes.addShapeless(<refinedstorage:core:1>,
	[<refinedstorage:processor:3>, <incorporeal:corporea_retainer_decrementer>]);
	
//====== External Storage =======
recipes.remove(<refinedstorage:external_storage>);
recipes.addShaped(<refinedstorage:external_storage>, [
	[<refinedstorage:core>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:core:1>],
	[<botania:corporeaspark:1>, <refinedstorage:cable>, <botania:corporeaspark:1>],
	[<refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:4>, <refinedstorage:quartz_enriched_iron>]
]);

print("Intialized 'Refined Storage'");
