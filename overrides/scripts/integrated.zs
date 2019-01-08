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
BloodInfuser.addRecipe(<rootsclassic:elderberry>, <liquid:evilcraftblood>*12000, 1, <integrateddynamics:menril_berries>,50,5); // Menril Berry

recipes.addShapeless(<integrateddynamics:menril_sapling>, // Menril Sappling
[<integrateddynamics:menril_berries>, <integrateddynamics:menril_berries>, <integrateddynamics:menril_berries>, <ore:treeSapling>]);

#Machine/Interfacing
for cable in dataCable{
recipes.remove(<integrateddynamics:cable>);//Logic Cable
recipes.addShaped(<integrateddynamics:cable> * 3 ,
[[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>],
[cable, <wizardry:devil_dust>, cable],
[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]]);
}

for interface in itemInterface{
recipes.remove(<integratedtunnels:part_interface_item_item>);// Item Interface
recipes.addShaped(<integratedtunnels:part_interface_item_item> * 4,
[[<integrateddynamics:crystalized_menril_chunk>, interface, <integrateddynamics:crystalized_menril_chunk>],
[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]]);
}

for interface in fluidInterface{
recipes.remove(<integratedtunnels:part_interface_fluid_item>);// Fluid Interface
recipes.addShaped(<integratedtunnels:part_interface_fluid_item> * 4,
[[<integrateddynamics:crystalized_menril_chunk>, interface, <integrateddynamics:crystalized_menril_chunk>],
[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>]]);
}



print("Integrated Dynamics/tunnels Initialized");
