import mods.initialinventory.InvHandler;
import crafttweaker.item.IItemStack;

var startingBook = 
	<akashictome:tome>.withTag({
		"akashictome:is_morphing": 1 as byte,
		"akashictome:data": {
			tconstruct: {
				id: "tconstruct:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "tconstruct",
					Damage: 0 as short
				},
			},
/*
			theoneprobe: {
				id: "theoneprobe:probenote",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "theoneprobe"
				},
				Damage: 0 as short
			},
*/
			astralsorcery: {
				id: "astralsorcery:itemjournal",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "astralsorcery",
				},
				Damage: 0 as short
			},
			conarm: {
				id: "conarm:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "conarm"
				},
				Damage: 0 as short
			},
			ftbquests: {
				id: "ftbquests:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "ftbquests"
				},
				Damage: 0 as short
			},
			patchouli: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "patchouli",
					"patchouli:book": "patchouli:atmagic"
				},
				Damage: 0 as short
			},
			integrateddynamics: {
				id: "integrateddynamics:on_the_dynamics_of_integration",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "integrateddynamics"
				},
				Damage: 0 as short
			},
			rustic: {
				id: "rustic:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rustic"
				},
				Damage: 0 as short
			},
			bloodmagic: {
				id: "guideapi:bloodmagic-guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "bloodmagic"
				},
				Damage: 0 as short
			},
			naturesaura: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "naturesaura",
					"patchouli:book": "naturesaura:book"
				},
				Damage: 0 as short
			},
			thebetweenlands: {
				id: "thebetweenlands:manual_hl",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "thebetweenlands"
				},
				Damage: 0 as short
			},
			bloodarsenal: {
				id: "guideapi:bloodarsenal-guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "bloodarsenal"
				},
				Damage: 0 as short
			}
		}
	});

InvHandler.addStartingItem(startingBook);

startingBook.addTooltip(format.aqua("Contains all basic mod manuals/guides already included"));
	mods.jei.JEI.addDescription(startingBook, "The Akashic tome is a book for your books...",
											  "This recipe of 1 dirt = full book is added by All The Mods to ALREADY contain most/all modded manuals as a convenience for our players");

//add the full book to JEI as it's own entry
	mods.jei.JEI.addItem(startingBook);

//1 dirt = book
	recipes.addShapeless(startingBook, [<minecraft:dirt>]);

recipes.addShapeless(<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:atmagic"}),
	[<minecraft:book>, <minecraft:paper>, <minecraft:stick>]);

//WIP Questbook Warning
<ftbquests:book>.displayName = "WIP Questbook for All the Magic";
<ftbquests:book>.addTooltip("The Questbook is a WIP please understand it is not finished!");

//====== Tooltip for added books ======
//
	var addedBooks = [
		<tconstruct:book>,
		<astralsorcery:itemjournal>,
		<conarm:book>,
		<ftbquests:book>,
		<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:atmagic"}),
		<integrateddynamics:on_the_dynamics_of_integration>,
		<rustic:book>,
		<guideapi:bloodmagic-guide>,
		<patchouli:guide_book>.withTag({"patchouli:book": "naturesaura:book"}),
		<thebetweenlands:manual_hl>,
		<guideapi:bloodarsenal-guide>
	] as IItemStack[];
	
	for itemBook in addedBooks {
		itemBook.addTooltip(format.aqua("Included within the \"default\" Akashic Tome"));
	}
