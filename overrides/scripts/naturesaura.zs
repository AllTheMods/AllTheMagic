#Nature's Aura Tweaks
import mods.naturesaura.TreeRitual;
import mods.naturesaura.Altar;

print("Nature's Aura Initializing...");

//====== Nature Altar ======
TreeRitual.removeRecipe(<naturesaura:nature_altar>); 
TreeRitual.addRecipe("atm_nature_altar", <integrateddynamics:menril_sapling>, <naturesaura:nature_altar>, 500,
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <minecraft:gold_ingot>,
	<thaumcraft:stone_arcane>, <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),  <naturesaura:gold_leaf>
]);

//====== Infused Iron ======
Altar.removeRecipe(<naturesaura:infused_iron>);
Altar.addRecipe("atm_infused_iron",<thaumcraft:ingot> , <naturesaura:infused_iron>, null, 300, 80);


print("Nature's Aura Intialized");
