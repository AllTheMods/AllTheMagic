#priority 90
#Hide JEI
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

print("Initializing 'Hide JEI'...");

#Variables
var hiddenItems as IItemStack[] = [
<refinedstorage:cover>,
<refinedstorage:hollow_cover>,
<appliedenergistics2:facade>
];

#Hide
for item in hiddenItems {
JEI.hide(item);
}

print("Intialized 'Hide JEI'");
