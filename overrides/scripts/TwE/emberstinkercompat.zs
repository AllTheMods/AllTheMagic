import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.embers.Melter;
import mods.embers.Stamper;

// SOURCE: https://gist.github.com/terrapin47/6564d700656b09f0e8e8b1e252efc047

// REGISTERED MATERIALS

// Names of all registered tcon materials that can be made into tool parts,
// excluding bow string, arrow shaft, bolt core, and fletching.  Any valid added materials will be added to the
// stamper recipes for making a cast.
val tconPartMaterials as string[] = [
    // TCON
    "stone",
    "flint",
    "cactus",
    "bone",
    "obsidian",
    "prismarine",
    "endstone",
    "paper",
    "sponge",
    "firewood",
    "iron",
    "pigiron",
    "knightslime",
    "slime",
    "blueslime",
    "magmaslime",
    "netherrack",
    "cobalt",
    "ardite",
    "manyullyn",
    "copper",
    "bronze",
    "lead",
    "silver",
    "electrum",
   "steel",
    "wood",
    // BETWEENLANDS
    "octine",
   "syrmorite",
    // EMBERS
    "dawnstone",
    "antimony",
    // BOTANIA
    "elementium",
    "livingrock",
    "livingwood",
    "manasteel",
    "manastring",
    "terrasteel",
    // ASTRAL SORCERY
    "starmetal",
    // THAUMCRAFT
    "thaumium",
    "voidmetal",
    //Twilight Forest
    "fierymetal",
    "knightmetal"
];

// Names of all registered conarm materials that can be made into armor parts,
// Any valid added materials will be added to the stamper recipes for making a cast.
val conarmPartMaterials as string[] = [
    // TCON
    "stone",
    "flint",
    "cactus",
    "bone",
    "obsidian",
    "prismarine",
    "endstone",
    "paper",
    "sponge",
    "firewood",
    "iron",
    "pigiron",
    "knightslime",
    "slime",
    "blueslime",
    "magmaslime",
    "netherrack",
    "cobalt",
    "ardite",
    "manyullyn",
    "copper",
    "bronze",
    "lead",
    "silver",
    "electrum",
    "steel",
    "wood",
    "steel",
    // BETWEENLANDS
    "octine",
    "syrmorite",
    // EMBERS
    "dawnstone",
    "antimony",
    // BOTANIA
    "elementium",
    "livingrock",
    "livingwood",
    "manasteel",
    "terrasteel",
    // ASTRAL SORCERY
    "starmetal",
    // THAUMCRAFT
    "thaumium",
    "voidmetal"
];

// Names of all registered materials that can be made into arrow shafts,
// Any valid added materials will be added to the stamper recipes for making a cast.
// These are also used to build out the bolt core recipes
var arrowShaftMaterials as string[] = [
    // TCON
    "bone",
    "blaze",
    "reed",
    "ice",
    "endrod",
    "wood",
    // BOTANIA
   "livingwood"
];

// Names of all registered materials that can be made into bowstrings,
// Any valid added materials will be added to the stamper recipes for making a cast.
var bowstringPartMaterials as string[] = [
    // TCON
    "string",
    "slimevine_blue",
    "slimevine_purple",
    "vine",
    // BOTANIA
    "manastring"
];

// Names of all registered materials that can be made into fletchings,
// Any valid added materials will be added to the stamper recipes for making a cast.
var fletchingMaterials as string[] = [
    // TCON
    "feather",
    "slimeleaf_blue",
    "slimeleaf_orange",
    "slimeleaf_purple"
];

// All the valid liquids for use in tinkers tools, used to create bolt core recipes
//   The string array determines what tinker's parts the material will register itself with.
//   The material must actually have valid parts for the types specified.
val registeredLiquidTypesMap as string[][ILiquidStack] = {
    // TCON
    <liquid:obsidian> : ["tool"],
    <liquid:iron> : ["tool", "armor"],
    <liquid:pigiron> : ["tool", "armor"],
    <liquid:knightslime> : ["tool", "armor"],
    <liquid:cobalt> : ["tool", "armor"],
    <liquid:ardite> : ["tool", "armor"],
    <liquid:manyullyn> : ["tool", "armor"],
    <liquid:copper> : ["tool", "armor"],
    <liquid:bronze> : ["tool", "armor"],
    <liquid:lead> : ["tool", "armor"],
    <liquid:silver> : ["tool", "armor"],
    <liquid:electrum> : ["tool", "armor"],
    <liquid:steel> : ["tool" ,"armor"],
    // BETWEENLANDS
    <liquid:octine> : ["tool", "armor"],
    <liquid:syrmorite> : ["tool", "armor"],
    // EMBERS
    <liquid:dawnstone> : ["tool", "armor"],
    <liquid:antimony> : ["tool", "armor"],
    // BOTANIA
    <liquid:elementium> : ["tool", "armor"],
    <liquid:manasteel> : ["tool", "armor"],
    <liquid:terrasteel> : ["tool", "armor"],
    // THAUMCRAFT
    <liquid:thaumium> : ["tool", "armor"],
    <liquid:voidmetal> : ["tool", "armor"],
    // ASTRAL SORCERY
    <liquid:starmetal> : ["tool", "armor"],
    <liquid:fierymetal> : ["tool"],
    <liquid:knightmetal> : ["tool"]
    };
// TOOLS
var tconInitMaterial = tconPartMaterials[0];

var partPickHead = <tconstruct:pick_head>.withTag({Material: tconInitMaterial});
var partToolRod = <tconstruct:tool_rod>.withTag({Material: tconInitMaterial});
var partBinding = <tconstruct:binding>.withTag({Material: tconInitMaterial});
var partShard = <tconstruct:shard>.withTag({Material: tconInitMaterial});
var partSharpeningKit = <tconstruct:sharpening_kit>.withTag({Material: tconInitMaterial});
var partShovelHead = <tconstruct:shovel_head>.withTag({Material: tconInitMaterial});
var partAxeHead = <tconstruct:axe_head>.withTag({Material: tconInitMaterial});
var partBroadAxeHead = <tconstruct:broad_axe_head>.withTag({Material: tconInitMaterial});
var partSwordBlade = <tconstruct:sword_blade>.withTag({Material: tconInitMaterial});
var partLargeSwordBlade = <tconstruct:large_sword_blade>.withTag({Material: tconInitMaterial});
var partHammerHead = <tconstruct:hammer_head>.withTag({Material: tconInitMaterial});
var partExcavatorHead = <tconstruct:excavator_head>.withTag({Material: tconInitMaterial});
var partKamaHead = <tconstruct:kama_head>.withTag({Material: tconInitMaterial});
var partScytheHead = <tconstruct:scythe_head>.withTag({Material: tconInitMaterial});
var partPanHead = <tconstruct:pan_head>.withTag({Material: tconInitMaterial});
var partSignHead = <tconstruct:sign_head>.withTag({Material: tconInitMaterial});
var partToughToolRod = <tconstruct:tough_tool_rod>.withTag({Material: tconInitMaterial});
var partToughBinding = <tconstruct:tough_binding>.withTag({Material: tconInitMaterial});
var partWideGuard = <tconstruct:wide_guard>.withTag({Material: tconInitMaterial});
var partHandGuard = <tconstruct:hand_guard>.withTag({Material: tconInitMaterial});
var partCrossGuard = <tconstruct:cross_guard>.withTag({Material: tconInitMaterial});
var partLargePlate = <tconstruct:large_plate>.withTag({Material: tconInitMaterial});
var partKnifeBlade = <tconstruct:knife_blade>.withTag({Material: tconInitMaterial});
var partBowLimb = <tconstruct:bow_limb>.withTag({Material: tconInitMaterial});
var partArrowHead = <tconstruct:arrow_head>.withTag({Material: tconInitMaterial});

for i in 1 .. tconPartMaterials.length {
    var material = tconPartMaterials[i];
    partPickHead |= <tconstruct:pick_head>.withTag({Material: material});
    partToolRod |= <tconstruct:tool_rod>.withTag({Material: material});
    partBinding |= <tconstruct:binding>.withTag({Material: material});
	partShard |= <tconstruct:shard>.withTag({Material: material});
	partSharpeningKit |= <tconstruct:sharpening_kit>.withTag({Material: material});
	partShovelHead |= <tconstruct:shovel_head>.withTag({Material: material});
	partAxeHead |= <tconstruct:axe_head>.withTag({Material: material});
	partBroadAxeHead |= <tconstruct:broad_axe_head>.withTag({Material: material});
	partSwordBlade |= <tconstruct:sword_blade>.withTag({Material: material});
	partLargeSwordBlade |= <tconstruct:large_sword_blade>.withTag({Material: material});
	partHammerHead |= <tconstruct:hammer_head>.withTag({Material: material});
	partExcavatorHead |= <tconstruct:excavator_head>.withTag({Material: material});
	partKamaHead |= <tconstruct:kama_head>.withTag({Material: material});
	partScytheHead |= <tconstruct:scythe_head>.withTag({Material: material});
	partPanHead |= <tconstruct:pan_head>.withTag({Material: material});
	partSignHead |= <tconstruct:sign_head>.withTag({Material: material});
	partToughToolRod |= <tconstruct:tough_tool_rod>.withTag({Material: material});
	partToughBinding |= <tconstruct:tough_binding>.withTag({Material: material});
	partWideGuard |= <tconstruct:wide_guard>.withTag({Material: material});
	partHandGuard |= <tconstruct:hand_guard>.withTag({Material: material});
	partCrossGuard |= <tconstruct:cross_guard>.withTag({Material: material});
	partLargePlate |= <tconstruct:large_plate>.withTag({Material: material});
	partKnifeBlade |= <tconstruct:knife_blade>.withTag({Material: material});
	partBowLimb |= <tconstruct:bow_limb>.withTag({Material: material});
	partArrowHead |= <tconstruct:arrow_head>.withTag({Material: material});
}

// ARMOR
var conarmInitMaterial = conarmPartMaterials[0];

var partHelmetCore = <conarm:helmet_core>.withTag({Material: conarmInitMaterial});
var partChestCore = <conarm:chest_core>.withTag({Material: conarmInitMaterial});
var partLeggingsCore = <conarm:leggings_core>.withTag({Material: conarmInitMaterial});
var partBootsCore = <conarm:boots_core>.withTag({Material: conarmInitMaterial});
var partArmorTrim = <conarm:armor_trim>.withTag({Material: conarmInitMaterial});
var partArmorPlate = <conarm:armor_plate>.withTag({Material: conarmInitMaterial});
var partPolishingKit = <conarm:polishing_kit>.withTag({Material: conarmInitMaterial});

for i in 1 .. conarmPartMaterials.length {
    var material = conarmPartMaterials[i];
    partHelmetCore |= <conarm:helmet_core>.withTag({Material: material});
    partChestCore |= <conarm:chest_core>.withTag({Material: material});
    partLeggingsCore |= <conarm:leggings_core>.withTag({Material: material});
    partBootsCore |= <conarm:boots_core>.withTag({Material: material});
    partArmorTrim |= <conarm:armor_trim>.withTag({Material: material});
    partArmorPlate |= <conarm:armor_plate>.withTag({Material: material});
    partPolishingKit |= <conarm:polishing_kit>.withTag({Material: material});
}


// STRINGS
var partBowString = <tconstruct:bow_string>.withTag({Material:bowstringPartMaterials[0]});

for i in 1 .. bowstringPartMaterials.length {
	partBowString |= <tconstruct:bow_string>.withTag({Material:bowstringPartMaterials[i]});
}


// SHAFTS
var partArrowShaft = <tconstruct:arrow_shaft>.withTag({Material:arrowShaftMaterials[0]});

for i in 1 .. arrowShaftMaterials.length {
    partArrowShaft |= <tconstruct:arrow_shaft>.withTag({Material:arrowShaftMaterials[i]});
}


// FLETCHINGS
var partFletching = <tconstruct:fletching>.withTag({Material:fletchingMaterials[0]});

for i in 1 .. fletchingMaterials.length {
    partFletching |= <tconstruct:fletching>.withTag({Material:fletchingMaterials[i]});
}


// Mapping for each set of parts and their accompanying cast
var partStamps as IItemStack[IIngredient] = {};
partStamps[partPickHead] = <emberstic:stamp_pick_head>;
partStamps[partToolRod] = <emberstic:stamp_tool_rod>;
partStamps[partBinding] = <emberstic:stamp_binding>;
partStamps[partShard] = <emberstic:stamp_shard>;
partStamps[partSharpeningKit] = <emberstic:stamp_sharpening_kit>;
partStamps[partShovelHead] = <emberstic:stamp_shovel_head>;
partStamps[partAxeHead] = <emberstic:stamp_axe_head>;
partStamps[partBroadAxeHead] = <emberstic:stamp_broad_axe_head>;
partStamps[partSwordBlade] = <emberstic:stamp_sword_blade>;
partStamps[partLargeSwordBlade] = <emberstic:stamp_large_sword_blade>;
partStamps[partHammerHead] = <emberstic:stamp_hammer_head>;
partStamps[partExcavatorHead] = <emberstic:stamp_excavator_head>;
partStamps[partKamaHead] = <emberstic:stamp_kama_head>;
partStamps[partScytheHead] = <emberstic:stamp_scythe_head>;
partStamps[partPanHead] = <emberstic:stamp_pan_head>;
partStamps[partSignHead] = <emberstic:stamp_sign_head>;
partStamps[partToughToolRod] = <emberstic:stamp_tough_tool_rod>;
partStamps[partToughBinding] = <emberstic:stamp_tough_binding>;
partStamps[partWideGuard] = <emberstic:stamp_wide_guard>;
partStamps[partHandGuard] = <emberstic:stamp_hand_guard>;
partStamps[partCrossGuard] = <emberstic:stamp_cross_guard>;
partStamps[partLargePlate] = <emberstic:stamp_large_plate>;
partStamps[partKnifeBlade] = <emberstic:stamp_knife_blade>;
partStamps[partBowLimb] = <emberstic:stamp_bow_limb>;
partStamps[partArrowHead] = <emberstic:stamp_arrow_head>;
partStamps[partHelmetCore] = <emberstic:stamp_helmet_core>;
partStamps[partChestCore] = <emberstic:stamp_chest_core>;
partStamps[partLeggingsCore] = <emberstic:stamp_leggings_core>;
partStamps[partBootsCore] = <emberstic:stamp_boots_core>;
partStamps[partArmorTrim] = <emberstic:stamp_armor_trim>;
partStamps[partArmorPlate] = <emberstic:stamp_armor_plate>;
partStamps[partPolishingKit] = <emberstic:stamp_polishing_kit>;
partStamps[partBowString] = <emberstic:stamp_bow_string>;
partStamps[partArrowShaft] = <emberstic:stamp_arrow_shaft>;
partStamps[partFletching] = <emberstic:stamp_fletching>;


Stamper.add(<emberstic:stamp_emerald>, null, <minecraft:emerald>, <embers:stamp_flat_raw>);

for part, stamp in partStamps {
    Stamper.add(stamp, null, part, <embers:stamp_flat_raw>);
}


// PART MATERIAL COMPAT

// Map for the amount of liquid each part type takes/melts into
static partLiquidMap as int[IItemStack] = {
    <conarm:armor_plate> : 432,
    <conarm:armor_trim> : 144,
    <conarm:boots_core> : 576,
    <conarm:chest_core> : 864,
    <conarm:helmet_core> : 576,
    <conarm:leggings_core> : 720,
    <conarm:polishing_kit> : 288,
    <tconstruct:arrow_head> : 288,
    <tconstruct:axe_head> : 288,
    <tconstruct:binding> : 144,
    <tconstruct:bow_limb> : 432,
    <tconstruct:bow_string> : 144,
    <tconstruct:broad_axe_head> : 1152,
    <tconstruct:cross_guard> : 144,
    <tconstruct:excavator_head> : 1152,
    <tconstruct:hammer_head> : 1152,
    <tconstruct:hand_guard> : 144,
    <tconstruct:kama_head> : 288,
    <tconstruct:knife_blade> : 144,
    <tconstruct:large_plate> : 1152,
    <tconstruct:large_sword_blade> : 1152,
    <tconstruct:pan_head> : 432,
    <tconstruct:pick_head> : 288,
    <tconstruct:scythe_head> : 1152,
    <tconstruct:shard> : 72,
    <tconstruct:sharpening_kit> : 288,
    <tconstruct:shovel_head> : 288,
    <tconstruct:sign_head> : 432,
    <tconstruct:sword_blade> : 288,
    <tconstruct:tool_rod> : 144,
    <tconstruct:tough_binding> : 432,
    <tconstruct:tough_tool_rod> : 432,
    <tconstruct:wide_guard> : 144,
    <tconstruct:fletching> : 288,
    <tconstruct:arrow_shaft> : 288
};

static partStampMap as IItemStack[IItemStack] = {
	<conarm:armor_plate> : <emberstic:stamp_armor_plate>,
	<conarm:armor_trim> : <emberstic:stamp_armor_trim>,
	<conarm:boots_core> : <emberstic:stamp_boots_core>,
	<conarm:chest_core> : <emberstic:stamp_chest_core>,
	<conarm:helmet_core> : <emberstic:stamp_helmet_core>,
	<conarm:leggings_core> : <emberstic:stamp_leggings_core>,
	<conarm:polishing_kit> : <emberstic:stamp_polishing_kit>,
	<tconstruct:arrow_head> : <emberstic:stamp_arrow_head>,
	<tconstruct:axe_head> : <emberstic:stamp_axe_head>,
	<tconstruct:binding> : <emberstic:stamp_binding>,
	<tconstruct:bow_limb> : <emberstic:stamp_bow_limb>,
	<tconstruct:broad_axe_head> : <emberstic:stamp_broad_axe_head>,
	<tconstruct:cross_guard> : <emberstic:stamp_cross_guard>,
	<tconstruct:excavator_head> : <emberstic:stamp_excavator_head>,
	<tconstruct:hammer_head> : <emberstic:stamp_hammer_head>,
	<tconstruct:hand_guard> : <emberstic:stamp_hand_guard>,
	<tconstruct:kama_head> : <emberstic:stamp_kama_head>,
	<tconstruct:knife_blade> : <emberstic:stamp_knife_blade>,
	<tconstruct:large_plate> : <emberstic:stamp_large_plate>,
	<tconstruct:large_sword_blade> : <emberstic:stamp_large_sword_blade>,
	<tconstruct:pan_head> : <emberstic:stamp_pan_head>,
	<tconstruct:pick_head> : <emberstic:stamp_pick_head>,
	<tconstruct:scythe_head> : <emberstic:stamp_scythe_head>,
	<tconstruct:shard> : <emberstic:stamp_shard>,
	<tconstruct:sharpening_kit> : <emberstic:stamp_sharpening_kit>,
	<tconstruct:shovel_head> : <emberstic:stamp_shovel_head>,
	<tconstruct:sign_head> : <emberstic:stamp_sign_head>,
	<tconstruct:sword_blade> : <emberstic:stamp_sword_blade>,
	<tconstruct:tool_rod> : <emberstic:stamp_tool_rod>,
	<tconstruct:tough_binding> : <emberstic:stamp_tough_binding>,
	<tconstruct:tough_tool_rod> : <emberstic:stamp_tough_tool_rod>,
	<tconstruct:wide_guard> : <emberstic:stamp_wide_guard>,
	<tconstruct:bow_string> : <emberstic:stamp_bow_string>,
	<tconstruct:fletching> : <emberstic:stamp_fletching>,
	<tconstruct:arrow_shaft> : <emberstic:stamp_arrow_shaft>
};

static tools as IItemStack[] = [
	<tconstruct:arrow_head>,
	<tconstruct:axe_head>,
	<tconstruct:binding>,
	<tconstruct:bow_limb>,
	<tconstruct:broad_axe_head>,
	<tconstruct:cross_guard>,
	<tconstruct:excavator_head>,
	<tconstruct:hammer_head>,
	<tconstruct:hand_guard>,
	<tconstruct:kama_head>,
	<tconstruct:knife_blade>,
	<tconstruct:large_plate>,
	<tconstruct:large_sword_blade>,
	<tconstruct:pan_head>,
	<tconstruct:pick_head>,
	<tconstruct:scythe_head>,
	<tconstruct:shard>,
	<tconstruct:sharpening_kit>,
	<tconstruct:shovel_head>,
	<tconstruct:sign_head>,
	<tconstruct:sword_blade>,
	<tconstruct:tool_rod>,
	<tconstruct:tough_binding>,
	<tconstruct:tough_tool_rod>,
	<tconstruct:wide_guard>
];

static armors as IItemStack[] = [
    <conarm:armor_plate>,
	<conarm:armor_trim>,
	<conarm:boots_core>,
	<conarm:chest_core>,
	<conarm:helmet_core>,
	<conarm:leggings_core>,
	<conarm:polishing_kit>
];

function registerPart(part as IItemStack, liquid as ILiquidStack) {
    var liquidName = liquid.name;

    val taggedPart = part.withTag({Material: liquidName});
    val liquidValue = liquid * partLiquidMap[part];

    Melter.add(liquidValue, taggedPart);
    Stamper.add(taggedPart, liquidValue, partStampMap[part]);
}


function registerEmbersCompat(liquid as ILiquidStack, types as string[]) {
// liquid must be the liquid of a valid registered tinker material
// types must contain one or more of ["tool", "bowstring", "arrowshaft", "fletching", "armor"]
//   This determines what tinker's parts the material will register itself with.
//   The material must actually have valid parts for the types specified.

    if (types in "tool") {
        for tool in tools {
            registerPart(tool, liquid);
        }
    }
    if (types in "bowstring") {
        registerPart(<tconstruct:bow_string>, liquid);
    }
    if (types in "arrowshaft") {
        registerPart(<tconstruct:arrow_shaft>, liquid);
    }
    if (types in "fletching") {
        registerPart(<tconstruct:fletching>, liquid);
    }
    if (types in "armor") {
        for armor in armors {
            registerPart(armor, liquid);
        }
    }
}

// Build out the recipe for each type
for registeredLiquid, types in registeredLiquidTypesMap {

    registerEmbersCompat(registeredLiquid, types);

    // BOLT CORES
    // Create the bolt core recipes from each arrow shaft and valid liquid
    for arrowShaftMaterial in arrowShaftMaterials {
        val taggedArrowShaft = <tconstruct:arrow_shaft>.withTag({Material: arrowShaftMaterial});

        val liquidValue = registeredLiquid * 288;

        val boltCore = <tconstruct:bolt_core>.withTag({
            TinkerData: {Materials: [arrowShaftMaterial, registeredLiquid.name]}
        });

        Stamper.add(boltCore, liquidValue, <embers:stamp_flat>, taggedArrowShaft);
    }

}
