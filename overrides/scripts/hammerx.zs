#Hammerx Fixes (Temp...Rewrite wil Fix)
import mods.bloodmagic.AlchemyArray;
import mods.bloodmagic.TartaricForge;
import mods.thaumcraft.Infusion;

#BloodMagic
#AlchemyArray.addRecipe(<hammerx:item.hammer>.withTag({"HammerX.HammerType": "bound"}),<bloodmagic:component:8>,<hammerx:item.hammer>.withTag({"HammerX.HammerType": "diamond"}));

#TartaricForge.addRecipe(<hammerx:item.hammer>.withTag({"HammerX.HammerType": "demonic"}),
#[<hammerx:item.hammer>.withTag({"HammerX.HammerType": "iron"}), <bloodmagic:soul_gem:1>],240,150);

#Thaumcraft
#Infusion.registerRecipe("hammerofthecore","ELEMENTALTOOLS@1",<hammerx:item.hammer>.withTag({"HammerX.HammerType": "thaumium_elemental"}) ,2,
#[<aspect:ignis>*38, <aspect:metallum>*38, <aspect:sensus>*38],<thaumcraft:elemental_pick>,
#[<ore:blockDiamond>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), <thaumcraft:log_greatwood>, <thaumcraft:log_greatwood>]);
