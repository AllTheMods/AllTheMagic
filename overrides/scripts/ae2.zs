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
Stamper.add(<appliedenergistics2:material:19>, <liquid:iron>*1296, <embers:plate_caminite>, <ore:itemSilicon>);//Silicon Press

for ingot in mechIngot{
Stamper.add(<appliedenergistics2:material:15>, <liquid:iron>*1296, <embers:plate_caminite>, ingot);//Logic Press
}

Stamper.add(<appliedenergistics2:material:14>, <liquid:iron>*1296, <embers:plate_caminite>, <ore:manaDiamond>);//Engineering Press

Stamper.add(<appliedenergistics2:material:13>, <liquid:iron>*1296, <embers:plate_caminite>, <ore:crystalPureCertusQuartz>);//Calculation Press

#Inscriber Recipes
Inscriber.removeRecipe(<appliedenergistics2:material:18>); //Printed Logic Circuit
for ingot in mechIngot{
Inscriber.addRecipe(<appliedenergistics2:material:18>, ingot, true, <appliedenergistics2:material:15>);
}

Inscriber.removeRecipe(<appliedenergistics2:material:17>);//Printed Engineering Circuit
Inscriber.addRecipe(<appliedenergistics2:material:17>, <ore:manaDiamond>, true, <appliedenergistics2:material:14>);

Inscriber.removeRecipe(<appliedenergistics2:material:22>);//Logic Processor
Inscriber.addRecipe(<appliedenergistics2:material:22>, <wizardry:devil_dust>, false, <appliedenergistics2:material:18>, <appliedenergistics2:material:20>);

Inscriber.removeRecipe(<appliedenergistics2:material:24>);//Engineering Processor
Inscriber.addRecipe(<appliedenergistics2:material:24>, <wizardry:devil_dust>, false, <appliedenergistics2:material:17>, <appliedenergistics2:material:20>);

Inscriber.removeRecipe(<appliedenergistics2:material:23>);//Calculation Processor
Inscriber.addRecipe(<appliedenergistics2:material:23>, <wizardry:devil_dust>, false, <appliedenergistics2:material:16>, <appliedenergistics2:material:20>);

#Items/Cables
recipes.remove(<appliedenergistics2:part:140>);//Quartz Fiber
recipes.addShaped(<appliedenergistics2:part:140>*3,
[[<botania:managlass>, <botania:managlass>, <botania:managlass>],
[<ore:dustQuartz>, <ore:dustQuartz>,<ore:dustQuartz>],
[<botania:managlass>, <botania:managlass>, <botania:managlass>]]);


recipes.remove(<appliedenergistics2:part:180>);//Illuminated Panel
recipes.addShapeless(<appliedenergistics2:part:180>,
[<appliedenergistics2:part:200>]);

recipes.addShaped(<appliedenergistics2:part:180>*3,
[[null, <ore:dustGlowstone>, <appliedenergistics2:quartz_glass>],
[<ore:ingotSteel>, <wizardry:devil_dust>, <appliedenergistics2:quartz_glass>],
[null, <ore:dustGlowstone>, <appliedenergistics2:quartz_glass>]]);

recipes.remove(<appliedenergistics2:material:52>);//Blank Pattern
recipes.addShaped(<appliedenergistics2:material:52>,
[[<appliedenergistics2:quartz_glass>, <ore:nitor>, <appliedenergistics2:quartz_glass>],
[<ore:dustGlowstone>, <ore:crystalCertusQuartz>, <ore:dustGlowstone>],
[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);

#Storage Components
recipes.remove(<appliedenergistics2:material:35>);//1K Storage Component
recipes.addShaped(<appliedenergistics2:material:35>,
[[<wizardry:devil_dust>, <appliedenergistics2:material:23>, <wizardry:devil_dust>],
[<ore:crystalCertusQuartz>, <ore:dustAstralStarmetal>, <ore:crystalCertusQuartz>],
[<wizardry:devil_dust>, <ore:crystalCertusQuartz>, <wizardry:devil_dust>]]);

recipes.remove(<appliedenergistics2:material:36>);//4K Storage Component
for ingot in magicIngot{
recipes.addShaped(<appliedenergistics2:material:36>,
[[<appliedenergistics2:material:23>, ingot, <appliedenergistics2:material:23>],
[<appliedenergistics2:material:35>, <ore:elvenPixieDust>, <appliedenergistics2:material:35>],
[<appliedenergistics2:material:23>, <appliedenergistics2:material:35>, <appliedenergistics2:material:23>]]);
}

recipes.remove(<appliedenergistics2:material:37>);//16K Storage Component
for part in magicPart{
recipes.addShaped(<appliedenergistics2:material:37>,
[[<appliedenergistics2:material:22>, part, <appliedenergistics2:material:22>],
[<appliedenergistics2:material:36>, <bloodarsenal:base_item:2>, <appliedenergistics2:material:36>],
[<appliedenergistics2:material:22>, <appliedenergistics2:material:36>, <appliedenergistics2:material:22>]]);
}

recipes.remove(<appliedenergistics2:material:38>);//64K Storage Component
recipes.addShaped(<appliedenergistics2:material:38>,
[[<appliedenergistics2:material:24>, <ore:ingotSupremium>, <appliedenergistics2:material:24>],
[<appliedenergistics2:material:37>, <mysticalagriculture:crafting:29>, <appliedenergistics2:material:37>],
[<appliedenergistics2:material:24>, <appliedenergistics2:material:37>, <appliedenergistics2:material:24>]]);

recipes.remove(<appliedenergistics2:material:54>);//1K Fluid Component
recipes.addShaped(<appliedenergistics2:material:54>,
[[<ore:crystalCertusQuartz>, <appliedenergistics2:material:23>, <ore:crystalCertusQuartz>],
[<botania:managlass>, <minecraft:bucket>, <botania:managlass>],
[<ore:crystalCertusQuartz>, <botania:managlass>, <ore:crystalCertusQuartz>]]);

recipes.remove(<appliedenergistics2:material:55>);//4K Fluid Component
for ingot in magicIngot{
recipes.addShaped(<appliedenergistics2:material:55>,
[[<appliedenergistics2:material:23>, ingot, <appliedenergistics2:material:23>],
[<appliedenergistics2:material:54>, <minecraft:bucket>, <appliedenergistics2:material:54>],
[<appliedenergistics2:material:23>, <appliedenergistics2:material:54>, <appliedenergistics2:material:23>]]);
}

recipes.remove(<appliedenergistics2:material:56>);//16K Fluid Component
for part in magicPart{
recipes.addShaped(<appliedenergistics2:material:56>,
[[<appliedenergistics2:material:22>, part, <appliedenergistics2:material:22>],
[<appliedenergistics2:material:55>, <minecraft:bucket>, <appliedenergistics2:material:55>],
[<appliedenergistics2:material:22>, <appliedenergistics2:material:55>, <appliedenergistics2:material:22>]]);
}

recipes.remove(<appliedenergistics2:material:57>);//64K Fluid Component
recipes.addShaped(<appliedenergistics2:material:57>,
[[<appliedenergistics2:material:24>, <ore:ingotSupremium>, <appliedenergistics2:material:24>],
[<appliedenergistics2:material:56>, <botania:openbucket>, <appliedenergistics2:material:56>],
[<appliedenergistics2:material:24>, <appliedenergistics2:material:56>, <appliedenergistics2:material:24>]]);

#Machines
recipes.remove(<appliedenergistics2:inscriber>);//Inscriber
recipes.addShaped(<appliedenergistics2:inscriber>,
[[<ore:ingotSteel>, <minecraft:sticky_piston>, <ore:ingotSteel>],
[<ore:crystalFluix>, null, <ore:ingotSteel>],
[<ore:ingotSteel>, <minecraft:sticky_piston>, <ore:ingotSteel>]]);

recipes.remove(<appliedenergistics2:drive>);//ME Drive
recipes.addShaped(<appliedenergistics2:drive>,
[[<ore:ingotSteel>, <appliedenergistics2:material:24>, <ore:ingotSteel>],
[<appliedenergistics2:part:16>, <ore:chestObsidian>, <appliedenergistics2:part:16>],
[<ore:ingotSteel>, <appliedenergistics2:material:24>, <ore:ingotSteel>]]);

recipes.remove(<appliedenergistics2:chest>);//ME Chest
recipes.addShaped(<appliedenergistics2:chest>,
[[<botania:managlass>, <appliedenergistics2:part:380>, <botania:managlass>],
[<appliedenergistics2:part:16>, <ore:chestObsidian>, <appliedenergistics2:part:16>],
[<ore:ingotSteel>, <ore:crystalFluix>, <ore:ingotSteel>]]);

recipes.remove(<appliedenergistics2:controller>);//ME Controller
recipes.addShaped(<appliedenergistics2:controller>,
[[<thaumcraft:stone_arcane>, <ore:crystalFluix>, <thaumcraft:stone_arcane>],
[<thaumcraft:stone_arcane>, <appliedenergistics2:material:24>, <ore:crystalFluix>],
[<thaumcraft:stone_arcane>, <ore:crystalFluix>, <thaumcraft:stone_arcane>]]);

#Terminals
recipes.remove(<appliedenergistics2:part:360>);//Crafting Terminal
recipes.addShapeless(<appliedenergistics2:part:360>,
[<appliedenergistics2:part:380>, <botania:craftinghalo>, <appliedenergistics2:material:23>]);

recipes.remove(<appliedenergistics2:part:340>);//Pattern Terminal
recipes.addShapeless(<appliedenergistics2:part:340>,
[<appliedenergistics2:material:24>, <appliedenergistics2:part:380>, <appliedenergistics2:material:52>]);

recipes.remove(<appliedenergistics2:part:520>);//Fluid Terminal
recipes.addShapeless(<appliedenergistics2:part:520>,
[<appliedenergistics2:part:380>, <botania:openbucket>, <appliedenergistics2:material:24>]);

print("Intialized 'AE2 Script'...");
