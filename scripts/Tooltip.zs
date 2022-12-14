import crafttweaker.item.IItemStack;
#MC Eternal Scripts

print("--- loading Tooltip.zs ---");

#Add tooltip
<extrautils2:bagofholding>.addTooltip(format.red("WARNING! Deletes items when switching gamemodes"));
<rats:arcane_technology>.addTooltip(format.gold("Drops from the Ratlantean Automaton"));
<ftbquests:book>.addTooltip(format.gold("A new beginning, Open me!"));
<minecraft:nether_star>.addTooltip(format.gold("Earth below us, Drifting falling"));
<wings:fairy_dust>.addTooltip(format.gold("Can be used to transmute certain metals. This dust radiates primal magic energy"));
<ftbquests:lootcrate>.withTag({type: "cultist"}).addTooltip(format.darkRed("Step one... Dress to impress!"));
<ftbquests:lootcrate>.withTag({type: "extraterrestrial_cache"}).addTooltip(format.gold("Keep your eyes on the stars, and your feet on the ground. -Theodore Roosevelt"));
<mysticalagriculture:diamond_seeds>.addTooltip(format.darkPurple("Do all Mystical Agriculture quests to unlock"));
<mysticalagriculture:gold_seeds>.addTooltip(format.darkPurple("Do all Farming and Agriculture quests to unlock"));
<minecolonies:blockhuttownhall>.addTooltip(format.darkPurple("Use a supplyship or supplycamp to obtain"));
<actuallyadditions:block_grinder>.addTooltip(format.red("Disabled"));
<ftbquests:lootcrate>.withTag({type: "cheesy_cache"}).addTooltip(format.gold("Hmm I wonder what it tastes like?... Did I really just think that? Yes you did"));
<ftbquests:lootcrate>.withTag({type: "common_lootbox"}).addTooltip(format.gold("Random loot reward for completing a quest"));
<ftbquests:lootcrate>.withTag({type: "unclaimed_black_market_container"}).addTooltip(format.gold("An item sold at a previous auction that was never picked up by the winning bidder. Buyer beware."));
<cookingforblockheads:sink>.addTooltip(format.red("Does not produce Infinite Water"));
<immersiveengineering:railgun>.addTooltip(format.lightPurple("Damage amplified to 40x"));
<immersiveengineering:revolver>.addTooltip(format.lightPurple("Bullet Damage values amplified to ~15x"));
<agricraft:sprinkler>.addTooltip(format.red("WARNING: Will cause serious FPS lag if Particles are not disabled in Agricraft's Config"));
<agricraft:sprinkler>.addTooltip(format.blue("Agricraft Particles are disabled by default, no animation will play, but this item will still work!"));
<extrautils2:chickenring:1>.addTooltip(format.red("Do not wear as a bauble, may teleport you down randomly while flying"));
<extrautils2:teleporter:1>.addTooltip(format.red("Disabled and will cause a Crash if you try to use it! use the Beneath and Beneath Teleporter instead."));
<randomthings:spectrekey>.addTooltip(format.red("DO NOT use Spectre Key or Spectre Core to leave the Spectre dimension after entering through other means!"));
<simplyjetpacks:itemjetpack:0>.addTooltip(format.red("Avoid charging this item, the Energy value of it can overflow and make it useless."));
<lootgames:ms_activator>.addTooltip(format.red("WARNING: DO NOT PLACE IN YOUR BASE"));
<erebus:materials:1>.addTooltip(format.gold("The Tinkers' Construct material for this item has been buffed massively."));
<theaurorian:auroriansteel>.addTooltip(format.gold("The Tinkers' Construct material for this item has been buffed massively."));
<extrautils2:teleporter:1>.addTooltip(format.red("Disabled and will cause a Crash if you try to use it! use the Beneath and Beneath Teleporter instead."));

var supremarmor = [<mysticalagriculture:supremium_helmet>,<mysticalagriculture:supremium_chestplate>,<mysticalagriculture:supremium_leggings>,<mysticalagriculture:supremium_boots>] as IItemStack[];
for armor in supremarmor {
  armor.addTooltip(format.red("Flight Disabled"));
}

var beneathores = [<mekanism:oreblock>,<nuclearcraft:ore:3>,<nuclearcraft:ore:5>,<nuclearcraft:ore:6>,<nuclearcraft:ore:7>,<immersiveengineering:ore:5>] as IItemStack[];
for ores in beneathores {
	ores.addTooltip(format.darkPurple("Only found in the Beneath"));
}

var mektooltiptext = ["If used in an AE2 Autocrafting Pattern, manually add this item into the crafting pattern, else it will not work.","Do not place with a Builder's Wand, will revert to Basic version."] as string[];
var mektooltipitems = [<mekanism:energycube>,<mekanism:basicblock2:3>,<mekanism:basicblock2:4>,<mekanism:transmitter:*>,<mekanism:gastank>,<mekanism:basicblock:6>,<mekanism:machineblock2:11>] as IItemStack[];
for items in mektooltipitems {
	for text in mektooltiptext {
		items.addTooltip(format.red(text));
	}
}
val mekfactorymetas = [5,6,7] as int[];
for metas in mekfactorymetas {
	itemUtils.getItem("mekanism:machineblock",metas).addTooltip(format.red("Do not place with a Builder's Wand, will transform into a Smelting Factory"));
}

print("--- Tooltip.zs initialized ---");	
