#Gadetry Tweaks
import crafttweaker.item.IIngredient;

print("Intializing 'Gadetry Script'...");

var mechIngot as IIngredient[] = [
<ore:ingotBrass>,
<ore:ingotDawnstone>
];

for ingot in mechIngot{
recipes.remove(<gadgetrycore:alloy_furnace>); //Alloy Furnace
recipes.addShaped(<gadgetrycore:alloy_furnace>, [
[<minecraft:brick_block> , <minecraft:brick_block>, <minecraft:brick_block>],
[ingot, <minecraft:furnace>, ingot],
[ingot, <minecraft:furnace>, ingot]
]);

recipes.remove(<gadgetrymachines:fluid_tank>);//Fluid Tank
recipes.addShaped(<gadgetrymachines:fluid_tank>, [
[<ore:blockGlassColorless>, ingot, <ore:blockGlassColorless>],
[<ore:blockGlassColorless> , null, <ore:blockGlassColorless>],
[<ore:blockGlassColorless> , ingot, <ore:blockGlassColorless>]
]);
}

print("Intialized 'Gadetry Script'");
