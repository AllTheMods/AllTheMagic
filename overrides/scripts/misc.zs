#Misc Tweaks
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;
import mods.astralsorcery.Altar;
import mods.bloodmagic.AlchemyArray;
import mods.jei.JEI;

#Mist World

//====== Lower Portal Block ======
Infusion.registerRecipe("lowerMistPortal","", <mist:portal_base>, 1,
	[<aspect:desiderium>*15, <aspect:motus>*12], <mist:portal_base:3>,
	[<ore:ingotGold>, <ore:ingotGold>, <ore:nuggetGold>, <ore:nuggetGold>]);

//====== Upper Portal Block ======
Infusion.registerRecipe("upperMistPortal","", <mist:portal_base:1>, 1,
	[<aspect:desiderium>*15, <aspect:motus>*12], <mist:portal_base:2>,
	[<ore:ingotGold>, <ore:ingotGold>, <ore:nuggetGold>, <ore:nuggetGold>]);

//====== Mossy Stone ======
recipes.addShaped(<mist:portal_base:2>, [
	[<minecraft:vine>],
	[<ore:nuggetGold>],
	[<ore:blockMossy>]
]);

//====== Weathered Stone ======
recipes.addShaped(<mist:portal_base:3>,[
	[<ore:mossyBlock>],
	[<ore:nuggetGold>],
	[<minecraft:vine>]
]);

//====== Respirator ======
recipes.removeByRecipeName("mist:respirator_single");
recipes.addShaped(<mist:respirator_single> , [
	[<minecraft:string>, null, <minecraft:string>],
	[<ore:leather>, null, <ore:leather>],
	[<ore:ingotSilver>, <ore:leather>, null]
]);

#SoulShards

recipes.remove(<soulshardsrespawn:materials:1>);
Crucible.registerRecipe("corruptEssence", "", <soulshardsrespawn:materials:1>, <ore:dustVile>, [<aspect:perditio>*20, <aspect:spiritus>*25, <aspect:vitium>*5]);

#PSI

//====== Rod Constructor ======
recipes.remove(<psi:cad_assembler>);
Altar.addAttunementAltarRecipe("allthemagic:shaped/internal/altar/cad_assembler",<psi:cad_assembler>, 300,100, [
	<ore:ingotBrass>, <thaumcraft:log_greatwood>, <ore:ingotBrass>,
	<thaumcraft:log_greatwood>, <minecraft:piston>, <thaumcraft:log_greatwood>,
	null, <ore:ingotBrass>, null,
	<ore:powderMana>, <ore:powderMana>, <ore:powderMana>, <ore:powderMana>
]);

//====== Programmer ======
recipes.remove(<psi:programmer>);
Altar.addAttunementAltarRecipe("allthemagic:shaped/internal/altar/programmer",<psi:programmer>, 350, 100, [
	<thaumcraft:log_greatwood>, <minecraft:map>, <thaumcraft:log_greatwood>,
	<thaumcraft:log_greatwood>, <psi:material>, <thaumcraft:log_greatwood>,
	<ore:ingotBrass>, null, <ore:ingotBrass>,
	<psi:material>, <psi:material>, <psi:material>, <psi:material>
]);

#Blood Magic Fixes

AlchemyArray.addRecipe(<bloodarsenal:blood_diamond:3>,<bloodmagic:component:8>,<bloodarsenal:blood_diamond:2>);

#Enchantment Plus

recipes.removeByRecipeName("eplus:table");
recipes.addShaped(<eplus:advanced_table>, [
	[<ore:ingotElvenElementium>, <minecraft:writable_book>, <ore:ingotElvenElementium>],
	[<evilcraft:dark_blood_brick>, <minecraft:enchanting_table>, <evilcraft:dark_blood_brick>],
	[<ore:ingotElvenElementium>, <xreliquary:salamander_eye>, <ore:ingotElvenElementium>]
]);

//====== Table Upgrade ======
recipes.remove(<eplus:table_upgrade>);
recipes.addShaped(<eplus:table_upgrade>, [
	[<ore:ingotElvenElementium>, <minecraft:writable_book>, <ore:ingotElvenElementium>],
	[<evilcraft:dark_blood_brick>, null, <evilcraft:dark_blood_brick>],
	[<ore:ingotElvenElementium>, <xreliquary:salamander_eye>, <ore:ingotElvenElementium>]
]);

#Vanilla Fix

Infusion.registerRecipe("atm:mending_book","",<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 70 as short}]}), 10,
	[<aspect:permutatio>*30, <aspect:cognitio>*20, <aspect:instrumentum>*15],
	<minecraft:book>, [<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:2>, <xreliquary:hero_medallion>]);

#Equivalent Energistics

//====== EMC Assembler ======
recipes.remove(<equivalentenergistics:emc_crafter>);
recipes.addShaped(<equivalentenergistics:emc_crafter>, [
	[<thaumcraft:stone_arcane>, <projecte:item.pe_covalence_dust:2>, <thaumcraft:stone_arcane>],
	[<projecte:item.pe_covalence_dust:2>, <appliedenergistics2:material:43>, <projecte:item.pe_covalence_dust:2>],
	[<thaumcraft:stone_arcane>, <projecte:item.pe_covalence_dust:2>, <thaumcraft:stone_arcane>]
]);

//====== Advanced EMC Assembler ======
recipes.remove(<equivalentenergistics:emc_crafter:1>);
recipes.addShaped(<equivalentenergistics:emc_crafter:1>, [
	[<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>],
	[<projecte:fuel_block:2>, <equivalentenergistics:emc_crafter>, <projecte:fuel_block:2>],
	[<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>]
]);

//====== Improved EMC Assembler ======
recipes.remove(<equivalentenergistics:emc_crafter:2>);
recipes.addShaped(<equivalentenergistics:emc_crafter:2>, [
	[<projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>],
	[<projecte:matter_block>, <equivalentenergistics:emc_crafter:1>, <projecte:matter_block>],
	[<projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>]
]);

//====== Ultimate EMC Assembler ======
recipes.remove(<equivalentenergistics:emc_crafter:3>);
recipes.addShaped(<equivalentenergistics:emc_crafter:3>, [
	[<projecte:matter_block:1>, <projecte:matter_block:1>,<projecte:matter_block:1>],
	[<projecte:matter_block:1>, <equivalentenergistics:emc_crafter:2>, <projecte:matter_block:1>],
	[<projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>]
]);

//====== EMC Condenser ======
recipes.remove(<equivalentenergistics:emc_condenser>);
recipes.addShaped(<equivalentenergistics:emc_condenser>, [
	[<thaumcraft:stone_arcane>, <projecte:item.pe_covalence_dust:2>, <thaumcraft:stone_arcane>],
	[<thaumcraft:stone_arcane>, <appliedenergistics2:material:44>, <thaumcraft:stone_arcane>],
	[<thaumcraft:stone_arcane>, <projecte:item.pe_covalence_dust:2>, <thaumcraft:stone_arcane>]
]);

//====== Advanced EMC Condenser ======
recipes.remove(<equivalentenergistics:emc_condenser:1>);
recipes.addShaped(<equivalentenergistics:emc_condenser:1>, [
	[<projecte:fuel_block:2>, <projecte:fuel_block:2>,<projecte:fuel_block:2>],
	[<projecte:fuel_block:2>, <equivalentenergistics:emc_condenser>, <projecte:fuel_block:2>],
	[<projecte:fuel_block:2>, <projecte:fuel_block:2>, <projecte:fuel_block:2>]
]);

//====== Improved EMC Condenser ======
recipes.remove(<equivalentenergistics:emc_condenser:2>);
recipes.addShaped(<equivalentenergistics:emc_condenser:2>, [
	[<projecte:matter_block>, <projecte:matter_block>,<projecte:matter_block>],
	[<projecte:matter_block>, <equivalentenergistics:emc_condenser:1>, <projecte:matter_block>],
	[<projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>]
]);

//====== Ultimate EMC Condenser ======
recipes.remove(<equivalentenergistics:emc_condenser:3>);
recipes.addShaped(<equivalentenergistics:emc_condenser:3>, [
	[<projecte:matter_block:1>, <projecte:matter_block:1>,<projecte:matter_block:1>],
	[<projecte:matter_block:1>, <equivalentenergistics:emc_condenser:2>, <projecte:matter_block:1>],
	[<projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>]
]);

#TIP
<tconstruct:large_plate>.addTooltip("Accepts ANY Large Plate");

#Tinker's Construct

//====== Reinforced Modifer ======
recipes.remove(<tconstruct:materials:14>);
recipes.addShaped(<tconstruct:materials:14>, [
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>],
	[<ore:obsidian>, <tconstruct:large_plate>, <ore:obsidian>],
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]
]);

#Construct Armory

//====== Resistance Modifer ======
recipes.remove(<conarm:resist_mat>);
recipes.addShaped(<conarm:resist_mat>, [
	[<ore:obsidian>, <ore:blockIron>, <ore:obsidian>],
	[<ore:blockIron>, <tconstruct:large_plate>, <ore:blockIron>],
	[<ore:obsidian>, <ore:blockIron>, <ore:obsidian>]
]);

//====== Fire Resistance Modifer ======
recipes.remove(<conarm:resist_mat_fire>);
recipes.addShaped(<conarm:resist_mat_fire>, [
	[<ore:obsidian>, <ore:dustBlaze>, <ore:obsidian>],
	[<ore:dustBlaze>, <tconstruct:large_plate>, <ore:dustBlaze>],
	[<ore:obsidian>, <ore:dustBlaze>, <ore:obsidian>]
]);

//====== Projectile Resistance Modifer ======
recipes.remove(<conarm:resist_mat_proj>);
recipes.addShaped(<conarm:resist_mat_proj>, [
	[<ore:obsidian>, <ore:arrow>, <ore:obsidian>],
	[<ore:arrow>, <tconstruct:large_plate>, <ore:arrow>],
	[<ore:obsidian>, <ore:arrow>, <ore:obsidian>]
]);

//====== Blast Resistance Modifer ======
recipes.remove(<conarm:resist_mat_blast>);
recipes.addShaped(<conarm:resist_mat_blast>, [
	[<ore:obsidian>, <minecraft:brick_block>, <ore:obsidian>],
	[<minecraft:brick_block>, <tconstruct:large_plate>, <minecraft:brick_block>],
	[<ore:obsidian>, <minecraft:brick_block>, <ore:obsidian>]
]);

recipes.addShaped(<contenttweaker:starmetal_block>, [
	[<ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>],
	[<ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>],
	[<ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>]
]);

recipes.addShapeless(<astralsorcery:itemcraftingcomponent:1>*9,
	[<ore:blockAstralStarmetal>]);

//====== Natural Pledge Funnel ======
mods.jei.JEI.removeAndHide(<naturalpledge:funnel>);