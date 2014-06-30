/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","apple","redgull","lockpick","pickaxe","fuelF","soda","pizza","chips","peach","storage1","storage2","lighter","battery"]]};
	case "donator": {["Donor Market",["water","apple","redgull","lockpick","pickaxe","fuelF","soda","burgers","gyros","pizza","chips"]]};
	case "rebel": {["Rebel Items",["water","soda","burgers","gyros","pizza","chips","lockpick","pickaxe","fuelF","boltcutter"]]};
	case "grub": {["Soup's Kitchen",["water","soda","burgers","gyros","pizza","chips"]]};
	case "coffee": {["Altis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "gold": {["Gold Trader",["goldp"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","barrieR","smallbarrieR","tapewirE","conE"]]};
	case "cement": {["Cement Dealer",["cement"]]};
};