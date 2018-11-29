#Project E Tweaks
import mods.thaumcraft.Infusion;
import mods.embers.Alchemy;

print("Project E Initializing...");

recipes.remove(<projecte:item.pe_philosophers_stone>);//Philosophers Stone
Infusion.registerRecipe("Philosophers Stone", "", <projecte:item.pe_philosophers_stone>, 80,
[<aspect:cognitio>*100, <aspect:spiritus>*80, <aspect:potentia>*200, <aspect:victus>*50, <aspect:tenebrae>*40, <aspect:permutatio>*70, <aspect:mortuus>*20, <aspect:praecantatio>*100],
<thaumcraft:primordial_pearl>,
[<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.pelotrio"}}), <wizardry:mana_battery>, <ore:ingotEbonyPsi>,
<bloodmagic:item_demon_crystal:3>, <evilcraft:piercing_vengeance_focus>, <rootsclassic:runicfocus>,
<mystcraft:blockcrystal>, <voidcraft:voidstar>, <ore:gaiIngot>,
<rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:blazing_trail", Duration: 9600, Amplifier: 0}]}), <embers:wildfire_core>, <xreliquary:alkahestry_tome>]);

recipes.remove(<projecte:item.pe_covalence_dust>);//Low Covalence Dust
recipes.addShapeless(<projecte:item.pe_covalence_dust>*40,
[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>,
 <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>,
 <thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>, <ore:coalInferium>]);

 recipes.remove(<projecte:item.pe_covalence_dust:1>);//Medium Covalence Dust
 recipes.addShapeless(<projecte:item.pe_covalence_dust:1>*40,
 [<ore:ingotBloodInfusedIron>, <bloodarsenal:base_item:2>]);

 recipes.remove(<projecte:item.pe_covalence_dust:2>);//High Covalence Dust
 recipes.addShapeless(<projecte:item.pe_covalence_dust:2>*40,
 [<ore:elvenDragonstone>, <ore:ingotShadowium>]);

recipes.remove(<projecte:alchemical_chest>);//Alchemical Chest
recipes.addShaped(<projecte:alchemical_chest>,
[[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:2>],
[<evilcraft:dark_blood_brick>, <bloodarsenal:blood_diamond:3>, <evilcraft:dark_blood_brick>],
[<ore:ingotNiobium>, <metalchests:metal_chest:4>, <ore:ingotNiobium>]]);

recipes.remove(<projecte:collector_mk1>);//Energy Collector MK1
recipes.addShaped(<projecte:collector_mk1>,
[[<bloodarsenal:blood_infused_glowstone>, <botania:elfglass>, <bloodarsenal:blood_infused_glowstone>],
[<bloodarsenal:blood_infused_glowstone>, <astralsorcery:blockworldilluminator>, <bloodarsenal:blood_infused_glowstone>],
[<bloodarsenal:blood_infused_glowstone>, <mysticalagriculture:intermedium_furnace>, <bloodarsenal:blood_infused_glowstone>]]);

recipes.remove(<projecte:collector_mk2>);//Energy Collector MK2
recipes.addShaped(<projecte:collector_mk2>,
[[<bloodarsenal:blood_infused_glowstone>, <projecte:matter_block>, <bloodarsenal:blood_infused_glowstone>],
[<bloodarsenal:blood_infused_glowstone>, <projecte:collector_mk1>, <bloodarsenal:blood_infused_glowstone>],
[<bloodarsenal:blood_infused_glowstone>, <mysticalagriculture:superium_furnace>, <bloodarsenal:blood_infused_glowstone>]]);

recipes.remove(<projecte:collector_mk3>);//Energy Collector MK3
recipes.addShaped(<projecte:collector_mk3>,
[[<bloodarsenal:blood_infused_glowstone>, <projecte:matter_block:1>, <bloodarsenal:blood_infused_glowstone>],
[<bloodarsenal:blood_infused_glowstone>, <projecte:collector_mk2>, <bloodarsenal:blood_infused_glowstone>],
[<bloodarsenal:blood_infused_glowstone>, <mysticalagriculture:supremium_furnace>, <bloodarsenal:blood_infused_glowstone>]]);

recipes.remove(<projecte:relay_mk1>); //Anti Matter Relay MK1
recipes.addShaped(<projecte:relay_mk1>,
[[<ore:obsidian>, <botania:elfglass>, <ore:obsidian>],
[<ore:obsidian>, <evilcraft:dark_power_gem>, <ore:obsidian>],
[<ore:obsidian>, <mysticalagriculture:intermedium_furnace>, <ore:obsidan>]]);

recipes.remove(<projecte:relay_mk2>); //Anti Matter Relay MK2
recipes.addShaped(<projecte:relay_mk2>,
[[<ore:obsidan>, <projecte:matter_block>, <ore:obsidan>],
[<ore:obsidan>, <projecte:relay_mk1>, <ore:obsidan>],
[<ore:obsidan>, <mysticalagriculture:superium_furnace>, <ore:obsidan>]]);

recipes.remove(<projecte:relay_mk3>);//Anti Matter Relay MK3
recipes.addShaped(<projecte:relay_mk3>,
[[<ore:obsidan>, <projecte:matter_block:1>, <ore:obsidan>],
[<ore:obsidan>, <projecte:relay_mk2>, <ore:obsidan>],
[<ore:obsidan>, <mysticalagriculture:supremium_furnace>, <ore:obsidan>]]);

recipes.remove(<projecte:transmutation_table>);//Transmutation Table
recipes.addShaped(<projecte:transmutation_table>,
[[<ore:blockVoid>, <extrabotany:blockorichalcos>, <ore:blockVoid>],
[<extrabotany:blockorichalcos>, <projecte:item.pe_philosophers_stone>, <extrabotany:blockorichalcos>],
[<ore:blockVoid>, <extrabotany:blockorichalcos>, <ore:blockVoid>]]);

recipes.remove(<projecte:item.pe_transmutation_tablet>);//Transmutation Tablet
Alchemy.add(<projecte:item.pe_transmutation_tablet>,
[<projecte:transmutation_table>, <projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>],
{"lead":20 to 25, "dawnstone": 20 to 25, "iron":20 to 25});

recipes.remove(<projecte:item.pe_repair_talisman>);//Repair Talisman
recipes.addShaped(<projecte:item.pe_repair_talisman>,
[[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:2>],
[<ore:string>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 70 as short}]}), <ore:string>],
[<projecte:item.pe_covalence_dust:2>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust>]]);
