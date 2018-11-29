#Shotguns and Glitter Tweaks

print("Shotguns and Glitter Intializing...");

#Guns
recipes.remove(<shotgunsandglitter:pistol>);//Pistol
recipes.addShaped(<shotgunsandglitter:pistol>, [
[<wizardry:devil_dust>, <xreliquary:mob_ingredient:13>, null],
[<wizardry:devil_dust>, <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>],
[null, null, <ore:ingotAstralStarmetal>]
]);

recipes.remove(<shotgunsandglitter:shotgun>);//Shotgun
recipes.addShaped(<shotgunsandglitter:shotgun>,[
[<wizardry:devil_dust>, <wizardry:devil_dust>, <xreliquary:mob_ingredient:13>],
[<wizardry:devil_dust>, <xreliquary:mob_ingredient:13>, <ore:ingotAstralStarmetal>],
[null, <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>]
]);

recipes.remove(<shotgunsandglitter:sniper>);//Sniper
recipes.addShaped(<shotgunsandglitter:sniper>,[
[null, null, null],
[<wizardry:devil_dust>, <astralsorcery:itemcraftingcomponent:4>, <xreliquary:mob_ingredient:13>],
[null, <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>]
]);

recipes.remove(<shotgunsandglitter:minigun>);//MiniGun
recipes.addShaped(<shotgunsandglitter:minigun>,[
[null, null, null],
[null, <xreliquary:mob_ingredient:13>, <ore:ingotAstralStarmetal>],
[<wizardry:devil_dust>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>]
]);

recipes.remove(<shotgunsandglitter:grenade>);//Grenade
recipes.addShaped(<shotgunsandglitter:grenade>*4,[
[<ore:dustAstralStarmetal>, <ore:manaString>, <ore:dustAstralStarmetal>],
[<ore:ingotAstralStarmetal>, <ore:gunpowder>, <ore:ingotAstralStarmetal>],
[<ore:dustAstralStarmetal>, <ore:ingotAstralStarmetal>, <ore:dustAstralStarmetal>]
]);

recipes.remove(<shotgunsandglitter:mini_turret>);//Mini mini_turrent
recipes.addShaped(<shotgunsandglitter:mini_turret>, [
[<wizardry:devil_dust>, <wizardry:devil_dust>, <wizardry:devil_dust>],
[<ore:dustAstralStarmetal>, <ore:ingotAstralStarmetal>, <ore:dustAstralStarmetal>],
[<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>]
]);

print("Shotguns and Glitter Intialized");
