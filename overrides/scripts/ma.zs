#Mystical Agriculture Tweaks
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;
import mods.botania.RuneAltar;
import mods.botania.ElvenTrade;
import mods.bloodmagic.BloodAltar;
import mods.astralsorcery.Altar;
import mods.embers.Alchemy;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;


print("Mystical Agriculture Initializing...");

#Fix Repairs
var matcCrystals as IItemStack[] = [
<matc:inferiumcrystal>,
<matc:prudentiumcrystal>,
<matc:intermediumcrystal>,
<matc:superiumcrystal>,
<matc:supremiumcrystal>,
<mysticalagriculture:master_infusion_crystal>
];

var Tier1 as IItemStack [] = [
<matc:inferiumcrystal:*>,
<matc:prudentiumcrystal:*>,
<matc:intermediumcrystal:*>,
<matc:superiumcrystal:*>,
<matc:supremiumcrystal:*>
];

var Tier2 as IItemStack [] = [
<matc:prudentiumcrystal:*>,
<matc:intermediumcrystal:*>,
<matc:superiumcrystal:*>,
<matc:supremiumcrystal:*>
];

var Tier3 as IItemStack [] = [
<matc:intermediumcrystal:*>,
<matc:superiumcrystal:*>,
<matc:supremiumcrystal:*>
];

var Tier4 as IItemStack [] = [
<matc:superiumcrystal:*>,
<matc:supremiumcrystal:*>
];

for crystals in matcCrystals {
crystals.definition.setNoRepair();
}



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
BloodAltar.addRecipe(<matc:intermediumcrystal>,  <matc:prudentiumcrystal>.withDamage(32767), 4, 60000,50,100);

recipes.remove(<matc:superiumcrystal>);//Superium Crystal
Altar.addTraitAltarRecipe("allthemagic:shaped/internal/ct/superiumcrystal",<matc:superiumcrystal>, 5000, 400,[
<ore:essenceSuperium>, <bloodmagic:component:5>, <ore:essenceSuperium>,<bloodmagic:component:5>, <matc:intermediumcrystal>.anyDamage(),
<bloodmagic:component:5>, <ore:essenceSuperium>, <bloodmagic:component:5>, <ore:essenceSuperium>, <ore:essenceSuperium>,
<ore:essenceSuperium>, <ore:essenceSuperium>, <ore:essenceSuperium>, null, null,
null, null, null, null, null,
null, null, null, null, null,
<ore:essenceSuperium>, <ore:essenceSuperium>, <ore:essenceSuperium>, <ore:essenceSuperium>
], "astralsorcery.constellation.horologium");

recipes.remove(<matc:supremiumcrystal>);//Supremium Crystal
recipes.addShaped(<matc:supremiumcrystal>, [
[<projecte:item.pe_fuel>, <ore:essenceSupremium>, <projecte:item.pe_fuel>],
[<ore:essenceSupremium>, <matc:superiumcrystal>.anyDamage(), <ore:essenceSupremium>],
[<projecte:item.pe_fuel>, <ore:essenceSupremium>, <projecte:item.pe_fuel>]
]);

recipes.remove(<mysticalagriculture:master_infusion_crystal>);//Master Crystal
Alchemy.add(<mysticalagriculture:master_infusion_crystal>,
[<matc:supremiumcrystal>.anyDamage(), <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>],
{"lead":12 to 14, "dawnstone": 8 to 12});

#CrytalFix
for crystal in Tier1{
recipes.removeByRecipeName("matc:essence/prudentium");
recipes.addShaped(<mysticalagriculture:crafting:1>,
[[null, <ore:essenceInferium>, null],
[<ore:essenceInferium>, crystal, <ore:essenceInferium>],
[null, <ore:essenceInferium>, null]]);
}

for crystal in Tier2{
recipes.removeByRecipeName("matc:essence/intermedium");
recipes.addShaped(<mysticalagriculture:crafting:2>,
[[null, <ore:essencePrudentium>, null],
[<ore:essencePrudentium>, crystal, <ore:essencePrudentium>],
[null, <ore:essencePrudentium>, null]]);
}

for crystal in Tier3{
recipes.removeByRecipeName("matc:essence/superium");
recipes.addShaped(<mysticalagriculture:crafting:3>,
[[null, <ore:essenceIntermedium>, null],
[<ore:essenceIntermedium>, crystal, <ore:essenceIntermedium>],
[null, <ore:essenceIntermedium>, null]]);
}

for crystal in Tier4{
recipes.removeByRecipeName("matc:essence/supremium");
recipes.addShaped(<mysticalagriculture:crafting:4>,
[[null, <ore:essenceSuperium>, null],
[<ore:essenceSuperium>, crystal, <ore:essenceSuperium>],
[null, <ore:essenceSuperium>, null]]);
}

#Seeds
recipes.remove(<mysticalagriculture:crafting:16>);//Base Crafting Seeds
Crucible.registerRecipe("baseSeeds","",<mysticalagriculture:crafting:16>, <minecraft:wheat_seeds>, [<aspect:herba>*12, <aspect:praecantatio>*6, <aspect:victus>*2, <aspect:fabrico>*8]);

print("Mystical Agriculture Intialized");
