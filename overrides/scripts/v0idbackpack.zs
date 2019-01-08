#V0id's Smart Backpack Tweaks
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

print("V0id's Smart Packback Intializing...");

recipes.remove(<v0idssmartbackpacks:upgrade_base>);//Upgrade Base
recipes.addShaped(<v0idssmartbackpacks:upgrade_base>,
[[null, <thaumcraft:stone_arcane>, null],
[<thaumcraft:stone_arcane>, <embers:plate_caminite>, <thaumcraft:stone_arcane>],
[null, <thaumcraft:stone_arcane>, null]]);

#Upgrades
recipes.remove(<v0idssmartbackpacks:upgrade_mending>);//Mending Upgrade
recipes.addShaped(<v0idssmartbackpacks:upgrade_mending>,
[[null, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 70 as short}]}), null],
[null, <v0idssmartbackpacks:upgrade_base>, null],
[null, <minecraft:anvil>, null]]);

recipes.remove(<v0idssmartbackpacks:upgrade_feeding>);//Auto Feed Upgrade
recipes.addShaped(<v0idssmartbackpacks:upgrade_feeding>,
[[null, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 28 as short}]}), null],
[<minecraft:golden_apple:1>, <v0idssmartbackpacks:upgrade_base>, <minecraft:golden_apple:1>],
[null, <minecraft:hopper>, null]]);

#Upgrade Removals
var upgrades as IItemStack[] = [
<v0idssmartbackpacks:upgrade_smelting>,
<v0idssmartbackpacks:upgrade_grinding>,
<v0idssmartbackpacks:upgrade_energy_basic>,
<v0idssmartbackpacks:upgrade_energy_advanced>,
<v0idssmartbackpacks:upgrade_energy_ultimate>,
<v0idssmartbackpacks:upgrade_energy_creative>,
<v0idssmartbackpacks:upgrade_generator_furnace>,
<v0idssmartbackpacks:upgrade_generator_solar>,
<v0idssmartbackpacks:upgrade_generator_wind>,
<v0idssmartbackpacks:upgrade_induction_coil>,
<v0idssmartbackpacks:upgrade_charging>,
<v0idssmartbackpacks:upgrade_generator_nuclear>,
<v0idssmartbackpacks:upgrade_generator_em>,
<v0idssmartbackpacks:upgrade_generator_kinetic>
];

for downGrade in upgrades{
JEI.removeAndHide(downGrade);
}

print("V0id's Smart Packback Intialized");
