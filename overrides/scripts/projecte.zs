#Project E Tweaks
import mods.thaumcraft.Infusion;
import mods.embers.Alchemy;

print("Project E Initializing...");

//====== Philosophers Stone ======
recipes.remove(<projecte:item.pe_philosophers_stone>);
Infusion.registerRecipe("Philosophers Stone", "", <projecte:item.pe_philosophers_stone>, 80, [
	<aspect:cognitio>*100, <aspect:spiritus>*80, <aspect:potentia>*200, <aspect:victus>*50, <aspect:tenebrae>*40, <aspect:permutatio>*70, <aspect:mortuus>*20, <aspect:praecantatio>*100],
	<thaumcraft:primordial_pearl>,
	[<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.horologium"}}), <wizardry:halo_real>, <ore:ingotEbonyPsi>,
	<bloodmagic:demon_crystal:3>, <evilcraft:piercing_vengeance_focus>, <rootsclassic:runicfocus>,
	<mystcraft:blockcrystal>, <voidcraft:voidstar>, <naturesaura:eye_improved>,
	<rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:blazing_trail", Duration: 9600, Amplifier: 0}]}), <embers:wildfire_core>, <xreliquary:alkahestry_tome>, <twilightforest:trophy:3>, <thebetweenlands:elixir:22>.withTag({elixirData: {duration: 1200, strength: 4}}), <dragonmounts:enchant_dragonscales>
]);

//====== Low Covalence Dust ======
recipes.remove(<projecte:item.pe_covalence_dust>);
recipes.addShapeless(<projecte:item.pe_covalence_dust>*40, [
	<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>,
	<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>,
	<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>, <ore:coalInferium>
]);

//====== Medium Covalence Dust ======
recipes.remove(<projecte:item.pe_covalence_dust:1>);
recipes.addShapeless(<projecte:item.pe_covalence_dust:1>*40,
	[<ore:ingotBloodInfusedIron>, <bloodarsenal:base_item:2>]);

//====== High Covalence Dust ======
recipes.remove(<projecte:item.pe_covalence_dust:2>);
recipes.addShapeless(<projecte:item.pe_covalence_dust:2>*40,
	[<ore:elvenDragonstone>, <ore:ingotShadowium>]);
	
//====== Dark Matter ======
recipes.removeByRecipeName("projecte:item.pe_matter_0");
recipes.addShaped(<projecte:item.pe_matter>, [
	[<projecte:item.pe_fuel:2> , <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>],
	[<projecte:item.pe_fuel:2>, <ore:blockSupremium>, <projecte:item.pe_fuel:2>],
	[<projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>]
]);

//====== Swift Wolf Rendering Gale ======
recipes.remove(<projecte:item.pe_swrg>);
recipes.addShaped(<projecte:item.pe_swrg>, [
	[<projecte:item.pe_matter> , <xreliquary:mob_ingredient:5>, <projecte:item.pe_matter>],
	[<xreliquary:mob_ingredient:5>, <botania:flighttiara:*>, <xreliquary:mob_ingredient:5>],
	[<projecte:item.pe_matter>, <xreliquary:mob_ingredient:5>, <projecte:item.pe_matter>]
]);

//====== Watch of Flowing Time ======
recipes.remove(<projecte:item.pe_time_watch>);
Alchemy.add(<projecte:item.pe_time_watch>,
	[<minecraft:clock>, <astralsorcery:itemtunedcelestialcrystal>, <ore:blockSupremium>, <astralsorcery:itemtunedcelestialcrystal>, <ore:blockSupremium>],
	{"lead":20 to 25, "dawnstone": 20 to 25, "iron":20 to 25, "copper": 15 to 18});

//====== Gem of Eternal Density ======
recipes.remove(<projecte:item.pe_gem_density>);
recipes.addShaped(<projecte:item.pe_gem_density>, [
	[<xreliquary:midas_touchstone>, <projecte:matter_block>, <xreliquary:midas_touchstone>],
	[<aetherworks:item_resource>, <thaumcraft:voidseer_charm>, <aetherworks:item_resource>],
	[<xreliquary:midas_touchstone>, <projecte:matter_block>, <xreliquary:midas_touchstone>]
]);

//====== Klein Star ======
recipes.remove(<projecte:item.pe_klein_star>);
recipes.addShaped(<projecte:item.pe_klein_star>, [
	[<projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>],
	[<projecte:item.pe_fuel:1>, <projecte:item.pe_philosophers_stone>, <projecte:item.pe_fuel:1>],
	[<projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>]
]);

//====== Alchemical Chest ======
recipes.remove(<projecte:alchemical_chest>);
recipes.addShaped(<projecte:alchemical_chest>, [
	[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:2>],
	[<evilcraft:dark_blood_brick>, <bloodarsenal:blood_diamond:3>, <evilcraft:dark_blood_brick>],
	[<ore:ingotNiobium>, <metalchests:metal_chest:4>, <ore:ingotNiobium>]
]);

//====== Energy Condenser MK1 ======
recipes.remove(<projecte:condenser_mk1>);
recipes.addShaped(<projecte:condenser_mk1>, [
	[<mysticalagriculture:iron_seeds>, <ore:blockSuperium>, <mysticalagriculture:gold_seeds>],
	[<ore:blockSuperium>, <projecte:alchemical_chest>, <ore:blockSuperium>],
	[<mysticalagriculture:skeleton_seeds>, <ore:blockSuperium>, <mysticalagriculture:creeper_seeds>]
]);

//====== Energy Collector MK1 ======
recipes.remove(<projecte:collector_mk1>);
recipes.addShaped(<projecte:collector_mk1>, [
	[<bloodarsenal:blood_infused_glowstone>, <botania:elfglass>, <bloodarsenal:blood_infused_glowstone>],
	[<bloodarsenal:blood_infused_glowstone>, <astralsorcery:blockworldilluminator>, <bloodarsenal:blood_infused_glowstone>],
	[<bloodarsenal:blood_infused_glowstone>, <mysticalagriculture:intermedium_furnace>, <bloodarsenal:blood_infused_glowstone>]
]);

//====== Energy Collector MK2 ======
recipes.remove(<projecte:collector_mk2>);
recipes.addShaped(<projecte:collector_mk2>, [
	[<bloodarsenal:blood_infused_glowstone>, <projecte:matter_block>, <bloodarsenal:blood_infused_glowstone>],
	[<bloodarsenal:blood_infused_glowstone>, <projecte:collector_mk1>, <bloodarsenal:blood_infused_glowstone>],
	[<bloodarsenal:blood_infused_glowstone>, <mysticalagriculture:superium_furnace>, <bloodarsenal:blood_infused_glowstone>]
]);

//====== Energy Collector MK3 ======
recipes.remove(<projecte:collector_mk3>);
recipes.addShaped(<projecte:collector_mk3>, [
	[<bloodarsenal:blood_infused_glowstone>, <projecte:matter_block:1>, <bloodarsenal:blood_infused_glowstone>],
	[<bloodarsenal:blood_infused_glowstone>, <projecte:collector_mk2>, <bloodarsenal:blood_infused_glowstone>],
	[<bloodarsenal:blood_infused_glowstone>, <mysticalagriculture:supremium_furnace>, <bloodarsenal:blood_infused_glowstone>]
]);

//====== Anti Matter Relay MK1 ======
recipes.remove(<projecte:relay_mk1>);
recipes.addShaped(<projecte:relay_mk1>, [
	[<ore:obsidian>, <botania:elfglass>, <ore:obsidian>],
	[<ore:obsidian>, <evilcraft:dark_power_gem>, <ore:obsidian>],
	[<ore:obsidian>, <mysticalagriculture:intermedium_furnace>, <ore:obsidian>]
]);

//====== Anti Matter Relay MK2 ======
recipes.remove(<projecte:relay_mk2>);
recipes.addShaped(<projecte:relay_mk2>, [
	[<ore:obsidian>, <projecte:matter_block>, <ore:obsidian>],
	[<ore:obsidian>, <projecte:relay_mk1>, <ore:obsidian>],
	[<ore:obsidian>, <mysticalagriculture:superium_furnace>, <ore:obsidian>]
]);

//====== Anti Matter Relay MK3 ======
recipes.remove(<projecte:relay_mk3>);
recipes.addShaped(<projecte:relay_mk3>,	[
	[<ore:obsidian>, <projecte:matter_block:1>, <ore:obsidian>],
	[<ore:obsidian>, <projecte:relay_mk2>, <ore:obsidian>],
	[<ore:obsidian>, <mysticalagriculture:supremium_furnace>, <ore:obsidian>]
]);

//====== Transmutation Table ======
recipes.remove(<projecte:transmutation_table>);
recipes.addShaped(<projecte:transmutation_table>, [
	[<ore:blockVoid>, <extrabotany:blockorichalcos>, <ore:blockVoid>],
	[<extrabotany:blockorichalcos>, <projecte:item.pe_philosophers_stone>, <extrabotany:blockorichalcos>],
	[<ore:blockVoid>, <extrabotany:blockorichalcos>, <ore:blockVoid>]
]);

//====== Transmutation Tablet ======
recipes.remove(<projecte:item.pe_transmutation_tablet>);
Alchemy.add(<projecte:item.pe_transmutation_tablet>,
	[<projecte:transmutation_table>, <projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>],
	{"lead":20 to 25, "dawnstone": 20 to 25, "iron":20 to 25});

//====== Repair Talisman ======
recipes.remove(<projecte:item.pe_repair_talisman>);
recipes.addShaped(<projecte:item.pe_repair_talisman>,[
	[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:2>],
	[<ore:string>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 70 as short}]}), <ore:string>],
	[<projecte:item.pe_covalence_dust:2>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust>]
]);
