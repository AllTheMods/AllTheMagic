#priority 80
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

var smelteryParts as IItemStack[] = [
	<tconstruct:smeltery_controller>,
	<tconstruct:seared_tank:*>,
	<tconstruct:faucet>,
	<tconstruct:channel>,
	<tconstruct:casting:*>,
	<tconstruct:seared_glass:*>,
	<tconstruct:smeltery_io>,
	<tconstruct:seared_furnace_controller>,
	<tconstruct:tinker_tank_controller>,
	<tconstruct:seared_slab:*>,
	<tconstruct:seared_slab2:*>,
	<tconstruct:cast>,
	<tconstruct:clay_cast>,
	<tconstruct:seared_stairs_stone>,
	<tconstruct:seared_stairs_cobble>,
	<tconstruct:seared_stairs_paver>,
	<tconstruct:seared_stairs_brick>,
	<tconstruct:seared_stairs_brick_cracked>,
	<tconstruct:seared_stairs_brick_fancy>,
	<tconstruct:seared_stairs_brick_triangle>,
	<tconstruct:seared_stairs_brick_square>,
	<tconstruct:seared_stairs_brick_small>,
	<tconstruct:seared_stairs_road>,
	<tconstruct:seared_stairs_tile>,
	<tconstruct:seared_stairs_creeper>,
	<tconstruct:soil>
];

for part in smelteryParts {
	JEI.removeAndHide(part);
}

//====== Seared Brick ======
furnace.remove(<tconstruct:materials:0>);
