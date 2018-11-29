#Misc Tweaks
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;
import mods.astralsorcery.Altar;
import mods.bloodmagic.AlchemyArray;

#Mist World
Infusion.registerRecipe("lowerMistPortal","", <mist:portal_base>, 1, //Lower Portal Block
[<aspect:desiderium>*15, <aspect:motus>*12], <mist:portal_base:3>,
[<ore:ingotGold>, <ore:ingotGold>, <ore:nuggetGold>, <ore:nuggetGold>]);

Infusion.registerRecipe("upperMistPortal","", <mist:portal_base:1>, 1,//Upper Portal Block
[<aspect:desiderium>*15, <aspect:motus>*12], <mist:portal_base:2>,
[<ore:ingotGold>, <ore:ingotGold>, <ore:nuggetGold>, <ore:nuggetGold>]);

recipes.addShaped(<mist:portal_base:2>, [ //Mossy Stone
[<minecraft:vine>],
[<ore:nuggetGold>],
[<ore:blockMossy>]
]);

recipes.addShaped(<mist:portal_base:3>,[ //Weathered Stone
[<ore:mossyBlock>],
[<ore:nuggetGold>],
[<minecraft:vine>]
]);

#SoulShards
recipes.remove(<soulshardsrespawn:materials:1>);
Crucible.registerRecipe("corruptEssence", "", <soulshardsrespawn:materials:1>, <ore:dustVile>, [<aspect:perditio>*20, <aspect:spiritus>*25, <aspect:vitium>*5]);

#PSI
recipes.remove(<psi:cad_assembler>); //Rod Constructor
Altar.addAttunementAltarRecipe("allthemagic:shaped/internal/altar/cad_assembler",<psi:cad_assembler>, 300,100,
[<ore:ingotBrass>, <thaumcraft:log_greatwood>, <ore:ingotBrass>,
<thaumcraft:log_greatwood>, <minecraft:piston>, <thaumcraft:log_greatwood>,
null, <ore:ingotBrass>, null,
<ore:powderMana>, <ore:powderMana>, <ore:powderMana>, <ore:powderMana>]);

recipes.remove(<psi:programmer>);
Altar.addAttunementAltarRecipe("allthemagic:shaped/internal/altar/programmer",<psi:programmer>, 350, 100,
[<thaumcraft:log_greatwood>, <minecraft:map>, <thaumcraft:log_greatwood>,
<thaumcraft:log_greatwood>, <psi:material>, <thaumcraft:log_greatwood>,
<ore:ingotBrass>, null, <ore:ingotBrass>,
<psi:material>, <psi:material>, <psi:material>, <psi:material>]);

#Blood Magic Fixes
AlchemyArray.addRecipe(<bloodarsenal:blood_diamond:3>,<bloodmagic:component:8>,<bloodarsenal:blood_diamond:2>);
