#Mystical Agriculture Tweaks
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;
import mods.botania.RuneAltar;
import mods.bloodmagic.BloodAltar;
import mods.astralsorcery.Altar;
import mods.embers.Alchemy;

print("Mystical Agriculture Initializing...");

#Crystals
recipes.remove(<matc:inferiumcrystal>);//Inferium Crystal
ArcaneWorkbench.registerShapedRecipe("inferiumCrystal", "LAMPGROWTH", 150, [<aspect:terra>*16, <aspect:aqua>*16],<matc:inferiumcrystal>,[
[<ore:shardProsperity>, <ore:essenceInferium>, <ore:shardProsperity>],
[<ore:essenceInferium>, <ore:manaDiamond>, <ore:essenceInferium>],
[<ore:shardProsperity>, <ore:essenceInferium>, <ore:shardProsperity>]
]);

recipes.remove(<matc:prudentiumcrystal>);//Prudentium Crystal
RuneAltar.addRecipe(<matc:prudentiumcrystal>, [<matc:inferiumcrystal>, <ore:essencePrudentium>, <ore:essencePrudentium>, <ore:essencePrudentium>, <ore:essencePrudentium>, <astralsorcery:itemcoloredlens:2>],10000);


recipes.remove(<matc:intermediumcrystal>);//Intermedium Crystal
BloodAltar.addRecipe(<matc:intermediumcrystal>, <matc:prudentiumcrystal>, 4, 60000,50,100);

recipes.remove(<matc:superiumcrystal>);//Superium Crystal
Altar.addTraitAltarRecipe("allthemagic:shaped/internal/ct/superiumcrystal",<matc:superiumcrystal>, 5000, 400,[
<ore:essenceSuperium>, <bloodmagic:component:5>, <ore:essenceSuperium>,<bloodmagic:component:5>, <matc:intermediumcrystal>,
<bloodmagic:component:5>, <ore:essenceSuperium>, <bloodmagic:component:5>, <ore:essenceSuperium>, <ore:essenceSuperium>,
<ore:essenceSuperium>, <ore:essenceSuperium>, <ore:essenceSuperium>, null, null,
null, null, null, null, null,
null, null, null, null, null,
<ore:essenceSuperium>, <ore:essenceSuperium>, <ore:essenceSuperium>, <ore:essenceSuperium>
], "astralsorcery.constellation.horologium");

recipes.remove(<matc:supremiumcrystal>);//Supremium Crystal
recipes.addShaped(<matc:supremiumcrystal>, [
[<projecte:item.pe_fuel>, <ore:essenceSupremium>, <projecte:item.pe_fuel>],
[<ore:essenceSupremium>, <matc:superiumcrystal>, <ore:essenceSupremium>],
[<projecte:item.pe_fuel>, <ore:essenceSupremium>, <projecte:item.pe_fuel>]
]);

recipes.remove(<mysticalagriculture:master_infusion_crystal>);//Master Crystal
Alchemy.add(<mysticalagriculture:master_infusion_crystal>,
[<matc:supremiumcrystal>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>],
{"lead":12 to 14, "dawnstone": 8 to 12});

#Seeds
recipes.remove(<mysticalagriculture:crafting:16>);//Base Crafting Seeds
Crucible.registerRecipe("baseSeeds","",<mysticalagriculture:crafting:16>, <minecraft:wheat_seeds>, [<aspect:herba>*12, <aspect:praecantatio>*6, <aspect:victus>*2, <aspect:fabrico>*8]);

print("Mystical Agriculture Intialized");
