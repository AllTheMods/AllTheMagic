#Mystcraft Tweaks
import mods.astralsorcery.Altar;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;

print("Mystcraft Initializing...");

//====== Writing Desk ======
recipes.remove(<mystcraft:writingdesk>);
ArcaneWorkbench.registerShapedRecipe("writingdesk", "", 200,
	[<aspect:aer>*10, <aspect:perditio>*10], <mystcraft:writingdesk>,[
	[<ore:bEnderAirBottle>, null, <xreliquary:angelic_feather>],
	[<astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>],
	[<astralsorcery:blockinfusedwood>, null, <astralsorcery:blockinfusedwood>]
]);

//====== Ink Mixer ======
recipes.remove(<mystcraft:blockinkmixer>);
recipes.addShaped(<mystcraft:blockinkmixer>, [
	[<bloodarsenal:slate>, null, <bloodarsenal:slate>],
	[<bloodarsenal:slate>, <thaumcraft:bottle_taint>, <bloodarsenal:slate>],
	[<bloodarsenal:blood_infused_wooden_planks>, <bloodarsenal:slate>, <bloodarsenal:blood_infused_wooden_planks>]
]);

//====== Ink Vial ======
recipes.remove(<mystcraft:vial>);
Crucible.registerRecipe("inkVial", "", <mystcraft:vial>, <botania:phantomink>, [<aspect:tenebrae>*30]);


print("Mystcraft Intialized");
