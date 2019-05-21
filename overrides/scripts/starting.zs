import mods.initialinventory.InvHandler;

val startingBook = 
	<akashictome:tome>.withTag({
		"akashictome:is_morphing": 1 as byte,
		"akashictome:data": {
			tconstruct: {
				ForgeCaps: {
					"astralsorcery:cap_item_amulet_holder": {
						AS_Amulet_HolderLeast: -9137117904929586522 as long, AS_Amulet_HolderMost: 6016781056497372058 as long
					}
				},
				id: "tconstruct:book",
				Count: 1 as byte,
				tag: {
					"akashictome:displayName": "Materials and You",
					"akashictome:definedMod": "tconstruct",
					"akashictome:is_morphing": 1 as byte,
					display: {
						Name: "§rAkashic Tome (§aMaterials and You§r)"},
						mantle: {
							book: {
								page: "materials.sponge"
							}
						}
					},
					Damage: 0 as short
				},
				theoneprobe: {
					ForgeCaps: {
						"astralsorcery:cap_item_amulet_holder": {}
					},
					id: "theoneprobe:probenote",
					Count: 1 as byte,
					tag: {
						"akashictome:definedMod": "theoneprobe"
					},
					Damage: 0 as short
				},
				astralsorcery: {
					ForgeCaps: {
						"astralsorcery:cap_item_amulet_holder": {
							AS_Amulet_HolderLeast: -9137117904929586522 as long,
							AS_Amulet_HolderMost: 6016781056497372058 as long
						}
					},
				id: "astralsorcery:itemjournal",
				Count: 1 as byte,
				tag: {
					"akashictome:displayName": "Astral Tome",
					astralsorcery: {
						constellations: ["astralsorcery.constellation.aevitas"]
					},
					"akashictome:definedMod": "astralsorcery",
					"akashictome:is_morphing": 1 as byte,
					display: {
						Name: "§rAkashic Tome (§aAstral Tome§r)"
					}
				},
				Damage: 0 as short
			},
			conarm: {
				ForgeCaps: {
					"astralsorcery:cap_item_amulet_holder": {}
				},
				id: "conarm:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "conarm"
				},
				Damage: 0 as short
			},
			ftbquests: {
				ForgeCaps: {
					"astralsorcery:cap_item_amulet_holder": {}
				},
				id: "ftbquests:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "ftbquests"
				},
				Damage: 0 as short
			},
			patchouli: {
				ForgeCaps: {
					"astralsorcery:cap_item_amulet_holder": {
						AS_Amulet_HolderLeast: -9137117904929586522 as long, AS_Amulet_HolderMost: 6016781056497372058 as long
					}
				},
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:displayName": "Magica Grimore",
					"akashictome:definedMod": "patchouli",
					"akashictome:is_morphing": 1 as byte,
					display: {
						Name: "§rAkashic Tome (§aMagica Grimore§r)"
					},
					"patchouli:book": "patchouli:atmagic"
				},
				Damage: 0 as short
			}
		}
	});

InvHandler.addStartingItem(startingBook);

recipes.addShapeless(<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:atmagic"}),
	[<minecraft:book>, <minecraft:paper>, <minecraft:stick>]);

//WIP Questbook Warning
<ftbquests:book>.displayName = "WIP Questbook for All the Magic";
<ftbquests:book>.addTooltip("The Questbook is a WIP please understand it is not finished!");
