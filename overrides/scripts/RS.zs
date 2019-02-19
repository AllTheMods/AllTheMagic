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
recipes.removeShaped(<refinedstorage:quartz_enriched_iron> ,//Quartz Enriched Iron
[[<minecraft:iron_ingot>, <minecraft:iron_ingot>],
[<minecraft:iron_ingot>, <minecraft:quartz>]]);

recipes.addShaped(<refinedstorage:quartz_enriched_iron> *4,
[[<ore:ingotSteel>, <ore:ingotSteel>],
[<ore:ingotSteel>, <ore:quartzMana>]]);

recipes.remove(<refinedstorage:machine_casing>);//Machine Casing
recipes.addShaped(<refinedstorage:machine_casing>,
[[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
[<refinedstorage:quartz_enriched_iron>, <botania:corporeaspark:1>, <refinedstorage:quartz_enriched_iron>],
[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]]);

#Storage Parts
recipes.remove(<refinedstorage:storage_part>);//1K Storage Part
recipes.addShaped(<refinedstorage:storage_part>,
[[<ore:itemSilicon>, <refinedstorage:quartz_enriched_iron>, <ore:itemSilicon>],
[<botania:managlass>, <ore:dustAstralStarmetal>, <botania:managlass>],
[<ore:itemSilicon>, <botania:managlass>, <ore:itemSilicon>]]);

for ingot in magicIngot{
recipes.remove(<refinedstorage:storage_part:1>);//4K Storage Part
recipes.addShaped(<refinedstorage:storage_part:1>,
[[<refinedstorage:processor:3>, ingot, <refinedstorage:processor:3>],
[<refinedstorage:storage_part>, <ore:elvenPixieDust>, <refinedstorage:storage_part>],
[<refinedstorage:processor:3>, <refinedstorage:storage_part>, <refinedstorage:processor:3>]]);
}

for part in magicPart{
recipes.remove(<refinedstorage:storage_part:2>);//16K Storage Part
recipes.addShaped(<refinedstorage:storage_part:2>,
[[<refinedstorage:processor:4>, part, <refinedstorage:processor:4>],
[<refinedstorage:storage_part:1>, <bloodarsenal:base_item:2>, <refinedstorage:storage_part:1>],
[<refinedstorage:processor:4>, <refinedstorage:storage_part:1>, <refinedstorage:processor:4>]]);
}

recipes.remove(<refinedstorage:storage_part:3>);//64K Storage Part
recipes.addShaped(<refinedstorage:storage_part:3>,
[[<refinedstorage:processor:5>, <ore:ingotSupremium>, <refinedstorage:processor:5>],
[<refinedstorage:storage_part:2>, <mysticalagriculture:crafting:29>, <refinedstorage:storage_part:2>],
[<refinedstorage:processor:5>, <refinedstorage:storage_part:2>, <refinedstorage:processor:5>]]) ;

recipes.remove(<refinedstorage:fluid_storage_part>);//64K Fluid Storage Part
recipes.addShaped(<refinedstorage:fluid_storage_part>,
[[<ore:itemSilicon>, <refinedstorage:quartz_enriched_iron>, <ore:itemSilicon>],
[<botania:managlass>, <minecraft:bucket>, <botania:managlass>],
[<ore:itemSilicon>, <botania:managlass>, <ore:itemSilicon>]]);

for ingot in magicIngot{
recipes.remove(<refinedstorage:fluid_storage_part:1>);//256K Fluid Storae Part
recipes.addShaped(<refinedstorage:fluid_storage_part:1>,
[[<refinedstorage:processor:3>, ingot, <refinedstorage:processor:3>],
[<refinedstorage:fluid_storage_part>, <minecraft:bucket>, <refinedstorage:fluid_storage_part>],
[<refinedstorage:processor:3>, <refinedstorage:fluid_storage_part>, <refinedstorage:processor:3>]]);
}

for part in magicPart{
recipes.remove(<refinedstorage:fluid_storage_part:2>);//1024K Fluid Storage Part
recipes.addShaped(<refinedstorage:fluid_storage_part:2>,
[[<refinedstorage:processor:4>, part, <refinedstorage:processor:4>],
[<refinedstorage:fluid_storage_part:1>, <minecraft:bucket>, <refinedstorage:fluid_storage_part:1>],
[<refinedstorage:processor:4>, <refinedstorage:fluid_storage_part:1>, <refinedstorage:processor:4>]]);
}

recipes.remove(<refinedstorage:fluid_storage_part:3>);//4096K Fluid Storage Part
recipes.addShaped(<refinedstorage:fluid_storage_part:3>,
[[<refinedstorage:processor:5>, <ore:ingotSupremium>, <refinedstorage:processor:5>],
[<refinedstorage:fluid_storage_part:2>, <botania:openbucket>, <refinedstorage:fluid_storage_part:2>],
[<refinedstorage:processor:5>, <refinedstorage:fluid_storage_part:2>, <refinedstorage:processor:5>]]);

#Cut Processors
recipes.remove(<refinedstorage:processor>);//Basic
recipes.addShapeless(<refinedstorage:processor> ,
[<refinedstorage:cutting_tool>.anyDamage() , <ore:ingotSteel> , <ore:itemSilicon>, <wizardry:devil_dust>]);

for ingot in mechIngot{
recipes.remove(<refinedstorage:processor:1>);//Improved
recipes.addShapeless(<refinedstorage:processor:1> ,
[<refinedstorage:cutting_tool>.anyDamage() , ingot, <ore:itemSilicon>, <wizardry:devil_dust>]);
}

recipes.remove(<refinedstorage:processor:2>);//Advanced
recipes.addShapeless(<refinedstorage:processor:2> ,
[<refinedstorage:cutting_tool>.anyDamage() , <ore:manaDiamond>, <ore:itemSilicon>, <wizardry:devil_dust>]);

#Processed Processors
furnace.remove(<refinedstorage:processor:3>);//Basic
Stamper.add(<refinedstorage:processor:3> , <liquid:alchemical_redstone>*144, <ore:itemSilicon>, <refinedstorage:processor>);

furnace.remove(<refinedstorage:processor:4>);//Improved
Stamper.add(<refinedstorage:processor:4> , <liquid:alchemical_redstone>*144, <ore:itemSilicon>, <refinedstorage:processor:1>);

furnace.remove(<refinedstorage:processor:5>);//Advanced
Stamper.add(<refinedstorage:processor:5>, <liquid:alchemical_redstone>*144, <ore:itemSilicon>, <refinedstorage:processor:2>);

#Machines
recipes.remove(<refinedstorage:controller>);//Controller
recipes.addShaped(<refinedstorage:controller>,
[[<refinedstorage:quartz_enriched_iron>, <botania:corporeaindex>, <refinedstorage:quartz_enriched_iron>],
[<ore:itemSilicon>, <refinedstorage:machine_casing>, <ore:itemSilicon>],
[<refinedstorage:quartz_enriched_iron>, <ore:itemSilicon>, <refinedstorage:quartz_enriched_iron>]]);

recipes.remove(<refinedstorage:disk_drive>);//Disk Drive
recipes.addShaped(<refinedstorage:disk_drive>,
[[<refinedstorage:quartz_enriched_iron>, <ore:chestObsidian>, <refinedstorage:quartz_enriched_iron>],
[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <refinedstorage:quartz_enriched_iron>],
[<refinedstorage:quartz_enriched_iron>, null, <refinedstorage:quartz_enriched_iron>]]);

recipes.remove(<refinedstorage:grid>);//Grid
recipes.addShaped(<refinedstorage:grid>,
[[<refinedstorage:processor:4>, <refinedstorage:core>, <botania:managlass>],
[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <botania:managlass>],
[<refinedstorage:processor:4>, <refinedstorage:core:1>, <botania:managlass>]]);

recipes.remove(<refinedstorage:grid:1>);//Crafting Grid
recipes.addShapeless(<refinedstorage:grid:1>,
[<refinedstorage:grid>, <refinedstorage:processor:5>, <botania:craftinghalo>]);

recipes.remove(<refinedstorage:grid:3>);//Fluid Grid
recipes.addShapeless(<refinedstorage:grid:3>,
[<refinedstorage:grid>, <refinedstorage:processor:5>, <botania:openbucket>]);

#Wireless Grid
recipes.remove(<refinedstorage:wireless_grid>);//Wireless Grid
recipes.addShaped(<refinedstorage:wireless_grid>,
[[<refinedstorage:quartz_enriched_iron>, <incorporeal:corporea_soul_core>, <refinedstorage:quartz_enriched_iron>],
[<refinedstorage:quartz_enriched_iron>, <refinedstorage:grid>, <refinedstorage:quartz_enriched_iron>],
[<refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:5>, <refinedstorage:quartz_enriched_iron>]]);

recipes.remove(<refinedstorageaddons:wireless_crafting_grid>);//Wireless Crafting Grid
recipes.addShapeless(<refinedstorageaddons:wireless_crafting_grid>,
[<refinedstorage:wireless_grid>, <refinedstorage:wireless_transmitter>, <refinedstorage:grid:1>]);

#RS Items
recipes.remove(<refinedstorage:pattern>);//Pattern
recipes.addShaped(<refinedstorage:pattern>,
[[<botania:managlass>, <ore:dustRedstone>, <botania:managlass>],
[<ore:dustRedstone>, <ore:nitor>, <ore:dustRedstone>],
[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]]);

recipes.remove(<refinedstorage:storage_housing>);//Storage Housing
recipes.addShaped(<refinedstorage:storage_housing>,
[[<botania:managlass>, <wizardry:devil_dust>, <botania:managlass>],
[<wizardry:devil_dust>, null, <wizardry:devil_dust>],
[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]]);

recipes.remove(<refinedstorage:cable>);//Cables
recipes.addShaped(<refinedstorage:cable>*12,
[[<refinedstorage:quartz_enriched_iron> , <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
[<botania:managlass>, <botania:corporeaspark>, <botania:managlass>],
[<refinedstorage:quartz_enriched_iron> , <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]]);

recipes.remove(<refinedstorage:core>);//Construction Core
recipes.addShapeless(<refinedstorage:core>,
[<refinedstorage:processor:3>, <incorporeal:corporea_solidifier>]);

recipes.remove(<refinedstorage:core:1>);//Destruction Core
recipes.addShapeless(<refinedstorage:core:1>,
[<refinedstorage:processor:3>, <incorporeal:corporea_retainer_decrementer>]);

recipes.remove(<refinedstorage:external_storage>);//External Storage
recipes.addShaped(<refinedstorage:external_storage>,
[[<refinedstorage:core>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:core:1>],
[<botania:corporeaspark:1>, <refinedstorage:cable>, <botania:corporeaspark:1>],
[<refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:4>, <refinedstorage:quartz_enriched_iron>]]);

print("Intialized 'Refined Storage'");
