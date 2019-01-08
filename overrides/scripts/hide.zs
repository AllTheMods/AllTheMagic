#Hide JEI
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

print("Initializing 'Hide JEI'...");

#Variables
var hiddenItems as IItemStack[] = [
<appliedenergistics2:facade>,
<refinedstorage:cover>,
<refinedstorage:hollow_cover>
];

#Hide
for item in hiddenItems {
JEI.hide(item);
}

JEI.removeAndHide(<singularities:compressor>);

print("Intialized 'Hide JEI'");
