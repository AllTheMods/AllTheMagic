#Steel Fixes and Recipes
import mods.embers.Melter;
import mods.embers.Mixer;
import mods.embers.Stamper;

Melter.add(<liquid:steel>*144, <ore:ingotSteel>);
Melter.add(<liquid:steel>*1296, <ore:blockSteel>);
Melter.add(<liquid:liquid_coal>*144,<ore:coal>);
Melter.add(<liquid:liquid_coal>*1296,<ore:blockCoal>);

Mixer.add(<liquid:steel>*8, [<liquid:iron>*4, <liquid:liquid_coal>*4]);
Stamper.add(<contenttweaker:steel_ingot>, <liquid:steel>*144, <embers:stamp_bar>, null);
recipes.addShaped(<contenttweaker:steel_block>,
[[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);

recipes.addShapeless(<contenttweaker:steel_ingot>*9,
[<ore:blockSteel>]);
