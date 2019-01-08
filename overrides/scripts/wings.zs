#Wings Tweaks
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

print("Wings Intializing...");

var hiddenItems as IItemStack[] = [
<wings:fairy_dust_ore>,
<wings:amethyst_ore>,
<wings:fairy_dust>,
<wings:amethyst>
];

for item in hiddenItems {
JEI.removeAndHide(item);
}

recipes.remove(<wings:angel_wings>); //Angel wings
recipes.addShaped(<wings:angel_wings>,
[[<minecraft:feather>, <wizardry:sky_dust>, <minecraft:feather>],
[<ore:ingotNiobium>, <wizardry:fairy_dust>, <ore:ingotNiobium>],
[<ore:ingotNiobium>, null, <ore:ingotNiobium>]]);

recipes.remove(<wings:slime_wings>);//Slime Wings
recipes.addShaped(<wings:slime_wings>,
[[<ore:slimeball>, <wizardry:sky_dust>, <ore:slimeball>],
[<ore:ingotNiobium>, <wizardry:fairy_dust>, <ore:ingotNiobium>],
[<ore:ingotNiobium>, null, <ore:ingotNiobium>]]);

recipes.remove(<wings:blue_butterfly_wings>); //Blue Butterfly Wings
recipes.addShaped(<wings:blue_butterfly_wings>,
[[<ore:dyeBlack>, <wizardry:sky_dust>, <ore:dyeBlue>],
[<ore:ingotNiobium>, <wizardry:fairy_dust>, <ore:ingotNiobium>],
[<ore:ingotNiobium>, null, <ore:ingotNiobium>]]);

recipes.remove(<wings:monarch_butterfly_wings>);//Monarch Butterfly Wings
recipes.addShaped(<wings:monarch_butterfly_wings>,
[[<ore:dyeBlack>, <wizardry:sky_dust>, <ore:dyeOrange>],
[<ore:ingotNiobium>, <wizardry:fairy_dust>, <ore:ingotNiobium>],
[<ore:ingotNiobium>, null, <ore:ingotNiobium>]]);

recipes.remove(<wings:fire_wings>);//Fire Wings
recipes.addShaped(<wings:fire_wings>,
[[<ore:dustBlaze>, <wizardry:sky_dust>, <ore:dustBlaze>],
[<ore:ingotNiobium>, <wizardry:fairy_dust>, <ore:ingotNiobium>],
[<ore:ingotNiobium>, null, <ore:ingotNiobium>]]);

recipes.remove(<wings:bat_wings>);//Bat Wings
recipes.addShaped(<wings:bat_wings>,
[[<xreliquary:mob_ingredient:5>, <wings:bat_blood>, <xreliquary:mob_ingredient:5>],
[<ore:ingotNiobium>, <wizardry:fairy_dust>, <ore:ingotNiobium>],
[<ore:ingotNiobium>, null, <ore:ingotNiobium>]]);

recipes.remove(<wings:fairy_wings>);//Fairy Wings
recipes.addShaped(<wings:fairy_wings>,
[[<wizardry:fairy_wings>, <wizardry:sky_dust>, <wizardry:fairy_wings>],
[<ore:ingotNiobium>, <wizardry:fairy_dust>, <ore:ingotNiobium>],
[<ore:ingotNiobium>, null, <ore:ingotNiobium>]]);

recipes.remove(<wings:evil_wings>);//Evil Wings
recipes.addShaped(<wings:evil_wings>,
[[<ore:gemDarkPower>, <wizardry:sky_dust>, <ore:gemDarkPower>],
[<ore:ingotNiobium>, <wizardry:fairy_dust>, <ore:ingotNiobium>],
[<ore:ingotNiobium>, null, <ore:ingotNiobium>]]);

recipes.remove(<wings:dragon_wings>);//Dragon Wings
recipes.addShaped(<wings:dragon_wings>,
[[<ore:scaleDragon>, <wizardry:sky_dust>, <ore:scaleDragon>],
[<ore:ingotNiobium>, <wizardry:fairy_dust>, <ore:ingotNiobium>],
[<ore:ingotNiobium>, null, <ore:ingotNiobium>]]);

print("Wings Intialized");
