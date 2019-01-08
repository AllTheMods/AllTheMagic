#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

#Steel Ingot & Steel Block
var steelBlock = VanillaFactory.createBlock("steel_block", <blockmaterial:rock>);
steelBlock.register();

var steelIngot = VanillaFactory.createItem("steel_ingot");
steelIngot.register();

//var moltenSteel = VanillaFactory.createFluid("molten_steel", Color.fromHex("5f6266"));
//moltenSteel.temperature = 1000;
//moltenSteel.register();

var liquidCoal = VanillaFactory.createFluid("liquid_coal", Color.fromHex("1d1e1e"));
liquidCoal.temperature = 800;
liquidCoal.register();

var starmetalBlock = VanillaFactory.createBlock("starmetal_block", <blockmaterial:rock>);
starmetalBlock.register();
