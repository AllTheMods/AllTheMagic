import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

// SOURCE: https://gist.github.com/terrapin47/16fb230d5dd73aec321fbe046b5d573c

// Make lavawood with the stamper
mods.embers.Stamper.add(<tconstruct:firewood>, <liquid:lava> * 250, <embers:stamp_flat>, <ore:plankWood>);

// DUST COMPAT

val dustLiquids as ILiquidStack[IOreDictEntry] = {

    <ore:dustTin> : <liquid:tin> * 144,
    <ore:dustCopper> : <liquid:copper> * 144,
    <ore:dustAluminum> : <liquid:aluminum> * 144,
    <ore:dustLead> : <liquid:lead> * 144,
    <ore:dustSilver> : <liquid:silver> * 144,
    <ore:dustNickel> : <liquid:nickel> * 144,
    <ore:dustElectrum> : <liquid:electrum> * 144,
    <ore:dustArdite> : <liquid:ardite> * 144,
    <ore:dustCobalt> : <liquid:cobalt> * 144,
    <ore:dustIron> : <liquid:iron> * 144,
    <ore:dustGold> : <liquid:gold> * 144,
    <ore:dustAstralStarmetal> : <liquid:starmetal> * 144

};

for dust, liquid in dustLiquids {
    mods.embers.Melter.add(liquid, dust);
}


// ORE COMPAT

val oreLiquids as ILiquidStack[IOreDictEntry] = {

    <ore:oreCobalt> : <liquid:cobalt> * 288,
    <ore:oreArdite> : <liquid:ardite> * 288,
    <ore:oreAstralStarmetal> : <liquid:starmetal> * 288
};

for ore, liquid in oreLiquids {
    mods.embers.Melter.add(liquid, ore);
}

// NUGGET COMPAT

val nuggetLiquids as ILiquidStack[IItemStack] = {

  <ore:nuggetManasteel>.firstItem : <liquid:manasteel> * 16,
    <ore:nuggetTerrasteel>.firstItem : <liquid:terrasteel> * 16,
    <ore:nuggetElvenElementium>.firstItem : <liquid:elementium> * 16,
    <ore:nuggetThaumium>.firstItem : <liquid:thaumium> * 16,
    <ore:nuggetVoid>.firstItem : <liquid:voidmetal> * 16,
    <ore:nuggetBrass>.firstItem : <liquid:brass> * 16,

    <ore:nuggetCobalt>.firstItem : <liquid:cobalt> * 16,
    <ore:nuggetArdite>.firstItem : <liquid:ardite> * 16,
    <ore:nuggetManyullyn>.firstItem : <liquid:manyullyn> * 16,
    <ore:nuggetKnightslime>.firstItem : <liquid:knightslime> * 16,
    <ore:nuggetPigiron>.firstItem : <liquid:pigiron> * 16,
    <ore:nuggetAlubrass>.firstItem : <liquid:alubrass> * 16
};

for nugget, liquid in nuggetLiquids {
    mods.embers.Melter.add(liquid, nugget);
    mods.embers.Stamper.add(nugget, liquid, <soot:stamp_nugget>);
}


// INGOT COMPAT

val ingotLiquids as ILiquidStack[IItemStack] = {

    <ore:ingotOctine>.firstItem : <liquid:octine> * 144,
    <ore:ingotSyrmorite>.firstItem : <liquid:syrmorite> * 144,
    <ore:ingotThaumium>.firstItem : <liquid:thaumium> * 144,
    <ore:ingotVoid>.firstItem : <liquid:voidmetal> * 144,
    <ore:ingotBrass>.firstItem : <liquid:brass> * 144,
    <ore:ingotCobalt>.firstItem : <liquid:cobalt> * 144,
    <ore:ingotArdite>.firstItem : <liquid:ardite> * 144,
    <ore:ingotManyullyn>.firstItem : <liquid:manyullyn> * 144,
    <ore:ingotKnightslime>.firstItem : <liquid:knightslime> * 144,
    <ore:ingotPigiron>.firstItem : <liquid:pigiron> * 144,
    <ore:ingotAlubrass>.firstItem : <liquid:alubrass> * 144,
    <ore:ingotFiery>.firstItem : <liquid:fierymetal> * 144,
    <ore:ingotKnightmetal>.firstItem : <liquid:knightmetal> * 144,
    <astralsorcery:itemcraftingcomponent:1> : <liquid:starmetal> * 144
};

for ingot, liquid in ingotLiquids {
    mods.embers.Melter.add(liquid, ingot);
    mods.embers.Stamper.add(ingot, liquid, <embers:stamp_bar>);
}

// Special stuff
mods.embers.Melter.add(<liquid:lava> * 25, <minecraft:netherrack>);
mods.embers.Melter.add(<liquid:emerald> * 666, <ore:gemEmerald>);
mods.embers.Stamper.add(<minecraft:emerald>, <liquid:emerald> * 666, <emberstic:stamp_emerald>);
mods.embers.Melter.add(<liquid:stone> * 72, <ore:stone>);
mods.embers.Melter.add(<liquid:stone> * 72, <ore:cobblestone>);
mods.embers.Melter.add(<liquid:stone> * 72, <ore:blockSeared>);
mods.embers.Stamper.add(<tconstruct:materials:0>, <liquid:stone> * 72, <embers:stamp_bar>);
mods.embers.Melter.add(<liquid:purpleslime> * 288, <tconstruct:edible:2>);
mods.embers.Stamper.add(<tconstruct:edible:2>, <liquid:purpleslime> * 288, <embers:stamp_flat>);


// BLOCK COMPAT

val blockLiquids as ILiquidStack[IItemStack] = {

    <botania:storage:0> : <liquid:manasteel> * 1296,
    <botania:storage:1> : <liquid:terrasteel> * 1296,
    <botania:storage:2> : <liquid:elementium> * 1296,
    <thaumcraft:metal_brass> : <liquid:brass> * 1296,
    <ore:blockThaumium>.firstItem : <liquid:thaumium> * 1296,
    <thaumcraft:metal_void> : <liquid:voidmetal> * 1296,
    <ore:blockOctine>.firstItem : <liquid:octine> * 1296,
    <ore:blockSyrmorite>.firstItem : <liquid:syrmorite> * 1296,
    <ore:blockIron>.firstItem : <liquid:iron> * 1296,
    <ore:blockGold>.firstItem : <liquid:gold> * 1296,
    <ore:blockBronze>.firstItem : <liquid:bronze> * 1296,
    <ore:blockCopper>.firstItem : <liquid:copper> * 1296,
    <ore:blockAluminum>.firstItem : <liquid:aluminum> * 1296,
    <ore:blockTin>.firstItem : <liquid:tin> * 1296,
    <ore:blockDawnstone>.firstItem : <liquid:dawnstone> * 1296,
    <ore:blockLead>.firstItem : <liquid:lead> * 1296,
    <ore:blockSilver>.firstItem : <liquid:silver> * 1296,
    <ore:blockNickel>.firstItem : <liquid:nickel> * 1296,
    <ore:blockElectrum>.firstItem : <liquid:electrum> * 1296,
    <ore:blockCobalt>.firstItem : <liquid:cobalt> * 1296,
    <ore:blockArdite>.firstItem : <liquid:ardite> * 1296,
    <ore:blockManyullyn>.firstItem : <liquid:manyullyn> * 1296,
    <ore:blockKnightslime>.firstItem : <liquid:knightslime> * 1296,
    <ore:blockPigiron>.firstItem : <liquid:pigiron> * 1296,
    <ore:blockAlubrass>.firstItem : <liquid:alubrass> * 1296,
    <ore:blockFiery>.firstItem : <liquid:fierymetal> * 1296,
    <ore:blockKnightmetal>.firstItem : <liquid:knightmetal> * 1296,
    <ore:blockAstralStarmetal>.firstItem : <liquid:starmetal> * 1296
};

for block, liquid in blockLiquids {
    mods.embers.Melter.add(liquid, block);
    mods.embers.Stamper.add(block, liquid, <embers:stamp_flat>);
}

# ALLOY COMPAT

// TCONSTRUCT
mods.embers.Mixer.add(<liquid:alubrass> * 8, [<liquid:copper> * 2, <liquid:aluminum> * 6]);
mods.embers.Mixer.add(<liquid:knightslime> * 4, [<liquid:iron> * 4, <liquid:purpleslime> * 8, <liquid:stone> * 8]);
mods.embers.Mixer.add(<liquid:manyullyn> * 4, [<liquid:cobalt> * 4, <liquid:ardite> * 4]);



// THAUMCRAFT
mods.embers.Melter.add(<liquid:brass> * 144, <ore:plateBrass>.firstItem);
mods.embers.Melter.add(<liquid:thaumium> * 144, <ore:plateThaumium>.firstItem);
mods.embers.Melter.add(<liquid:voidmetal> * 144, <ore:plateVoid>.firstItem);

mods.embers.Stamper.add(<ore:plateBrass>.firstItem, <liquid:brass> * 144, <embers:stamp_plate>);
mods.embers.Stamper.add(<ore:plateThaumium>.firstItem, <liquid:thaumium> * 144, <embers:stamp_plate>);
mods.embers.Stamper.add(<ore:plateVoid>.firstItem, <liquid:voidmetal> * 144, <embers:stamp_plate>);

recipes.addShapeless(<ore:plateBrass>.firstItem, [
	<ore:ingotBrass>, <ore:ingotBrass>, <embers:tinker_hammer>
]);
recipes.addShapeless(<ore:plateThaumium>.firstItem, [
	<ore:ingotThaumium>, <ore:ingotThaumium>, <embers:tinker_hammer>
]);
recipes.addShapeless(<ore:plateVoid>.firstItem, [
	<ore:ingotVoid>, <ore:ingotVoid>, <embers:tinker_hammer>
]);
