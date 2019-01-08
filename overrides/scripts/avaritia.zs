#Avaritia Tweaks
import mods.avaritia.ExtremeCrafting;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("Avaritia Initializing...");

ExtremeCrafting.remove(<avaritia:resource:5>);

ExtremeCrafting.addShapeless("Infinity Catalyst",<avaritia:resource:5>,
[<avaritia:resource>, <avaritia:resource:1>, <avaritia:resource:2>, <avaritia:resource:3>, <avaritia:resource:4>, <avaritia:ultimate_stew>, <avaritia:cosmic_meatballs>, <avaritia:endest_pearl>, <avaritia:resource:7>,
<avaritia:singularity>, <avaritia:singularity:1>, <avaritia:singularity:2>, <avaritia:singularity:3>, <avaritia:singularity:4>, <avaritia:singularity:5>, <avaritia:singularity:6>,
<avaritia:singularity:7>, <avaritia:singularity:8>, <avaritia:singularity:9>, <singularities:singularity>, <singularities:singularity:1>, <singularities:singularity:2>, <singularities:singularity:3>, <singularities:singularity:4>, <singularities:singularity:5>,
<singularities:singularity:6>, <singularities:singularity:7>, <singularities:singularity:8>, <singularities:singularity:9>, <singularities:singularity:10>, <avaritiatweaks:gaia_block>]);

recipes.remove(<avaritia:resource>);//Diamond Lattice
recipes.addShaped(<avaritia:resource>,
[[<ore:manaDiamond>, null, <ore:manaDiamond>],
[null, <ore:manaDiamond>, null],
[<ore:manaDiamond>, null, <ore:manaDiamond>]]);


//Mystcraft Craftable Pages
val mystPage as string[IItemStack][IOreDictEntry] = {
<ore:blockThaumium> : {<mystcraft:page>.withTag({symbol: "pewter:modmat_molten_thaumium_0"}) : "atm:pageThaumium"},
<ore:blockVoid> : {<mystcraft:page>.withTag({symbol: "pewter:modmat_molten_voidmetal_0"}) : "atm:pageVoid"},
<ore:blockManasteel> : {<mystcraft:page>.withTag({symbol: "pewter:modmat_molten_manasteel_0"}) : "atm:pageManasteel"},
<ore:blockElementium> : {<mystcraft:page>.withTag({symbol: "pewter:modmat_molten_elementium_0"}) : "atm:pageElementium"},
<ore:blockTerrasteel> : {<mystcraft:page>.withTag({symbol: "pewter:modmat_molten_terrasteel_0"}) : "atm:pageTerrasteel"},
<ore:blockAstralStarmetal> : {<mystcraft:page>.withTag({symbol: "pewter:modmat_molten_starmetal_0"}) : "atm:pageStarmetal"},
<ore:blockKnightslime> : {<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_knightslime_0"}) : "atm:pageKnightslime"},
<ore:blockOctine> : {<mystcraft:page>.withTag({symbol: "pewter:modmat_molten_octine_0"}) : "atm:pageOctine"},
<ore:blockSyrmorite> : {<mystcraft:page>.withTag({symbol: "pewter:modmat_molten_syrmorite_0"}) : "atm:pageSyrmorite"},
<ore:blokCopper> : {<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_copper_0"}) : "atm:pageCopper"},
<ore:blockGold> : {<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_gold_0"}) : "atm:pageGold"},
<ore:blockElectrum> : {<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_electrum_0"}) : "atm:pageElectrum"},
<ore:blockAluminum> : {<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_aluminum_0"}) : "atm:pageAluminum"},
<ore:blockIron> : {<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_iron_0"}) : "atm:pageIron"},
<ore:blockSilver> : {<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_silver_0"}) : "atm:pageSilver"},
<ore:blockTin> : {<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_tin_0"}) : "atm:pageTin"},
<ore:blockLead> : {<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_lead_0"}) : "atm:pageLead"},
<ore:blockSteel> : {<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_steel_0"}) : "atm:pageSteel"},
<ore:blockNickel> : {<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_nickel_0"}) : "atm:pageNickel"},
<ore:blockEmerald> : {<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_emerald_0"}) : "atm:pageEmerald"}
};

for block , subPage in mystPage {
  for page, recipe in subPage {
    ExtremeCrafting.addShaped(recipe, page,
    [[block, block, block, block, block, block, block, block, block],
    [block, block, block, block, block, block, block, block, block],
    [block, block, block, block, block, block, block, block, block],
    [block, block, block, block, block, block, block, block, block],
    [block, block, block, block, <astralsorcery:itemcraftingcomponent:5>, block, block, block, block],
    [block, block, block, block, block, block, block, block, block],
    [block, block, block, block, block, block, block, block, block],
    [block, block, block, block, block, block, block, block, block],
    [block, block, block, block, block, block, block, block, block]]);
  }
}


print("Avaritia Initialized");
