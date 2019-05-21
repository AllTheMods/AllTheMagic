import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.evilcraft.BloodInfuser;

print("Integrated Dynamics/tunnels Initializing...");

#Variables
var disabledItems as IItemStack[] = [
	<integratedtunnels:part_interface_energy_item>,
	<integratedtunnels:part_importer_energy_item>,
	<integratedtunnels:part_exporter_energy_item>,
	<integratedtunnels:part_importer_world_energy_item>,
	<integratedtunnels:part_exporter_world_energy_item>
];

var dataCable as IItemStack [] = [
	<appliedenergistics2:part:16>,
	<refinedstorage:cable>
];

var itemInterface as IItemStack[] = [
	<appliedenergistics2:interface>,
	<refinedstorage:interface>
];

var fluidInterface as IItemStack[] = [
	<appliedenergistics2:fluid_interface>,
	<refinedstorage:fluid_interface>
];

for item in disabledItems{
	JEI.removeAndHide(item);
}

#Starting Items

//====== Menril Berry ======
BloodInfuser.addRecipe(<rootsclassic:elderberry>, <liquid:evilcraftblood>*12000, 1, <integrateddynamics:menril_berries>,50,5);

//====== Menril Sapling ======
recipes.addShapeless(<integrateddynamics:menril_sapling>,[<integrateddynamics:menril_berries>, <integrateddynamics:menril_berries>, <integrateddynamics:menril_berries>, <ore:treeSapling>]);

#Machine/Interfacing

//====== Logic Cable ======
for cable in dataCable{
	recipes.remove(<integrateddynamics:cable>);
	recipes.addShaped(<integrateddynamics:cable> * 3 , [
		[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>],
		[cable, <wizardry:devil_dust>, cable],
		[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]
	]);
}

//====== Item Interface ======
for interface in itemInterface{
	recipes.remove(<integratedtunnels:part_interface_item_item>);
	recipes.addShaped(<integratedtunnels:part_interface_item_item> * 4, [
		[<integrateddynamics:crystalized_menril_chunk>, interface, <integrateddynamics:crystalized_menril_chunk>],
		[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]
	]);
}

//====== Fluid Interface ======
for interface in fluidInterface{
	recipes.remove(<integratedtunnels:part_interface_fluid_item>);
	recipes.addShaped(<integratedtunnels:part_interface_fluid_item> * 4, [
		[<integrateddynamics:crystalized_menril_chunk>, interface, <integrateddynamics:crystalized_menril_chunk>],
		[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>]
	]);
}


print("Integrated Dynamics/tunnels Initialized");
