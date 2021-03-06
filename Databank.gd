extends Node

var itemDict = {
	1: ["Master Ball", "Ball"],
	2: ["Ultra Ball", "Ball"],
	3: ["Great Ball", "Ball"],
	4: ["PokeBall", "Ball"],
	5: ["Safari Ball", "Ball"],
	6: ["Net Ball", "Ball"],
	7: ["Dive Ball", "Ball"],
	8: ["Nest Ball", "Ball"],
	9: ["Repeat Ball", "Ball"],
	10: ["Timer Ball", "Ball"],
	11: ["Luxury Ball", "Ball"],
	12: ["Premier Ball", "Ball"],
	13: ["Potion", "Item"],
	14: ["Antidote", "Item"],
	15: ["Burn Heal", "Item"],
	16: ["Ice Heal", "Item"],
	17: ["Awakening", "Item"],
	18: ["Parlyz Heal", "Item"],
	19: ["Full Restore", "Item"],
	20: ["Max Potion", "Item"],
	21: ["Hyper Potion", "Item"],
	22: ["Super Potion", "Item"],
	23: ["Full Heal", "Item"],
	24: ["Revive", "Item"],
	25: ["Max Revive", "Item"],
	26: ["Fresh Water", "Item"],
	27: ["Soda Pop", "Item"],
	28: ["Lemonade", "Item"],
	29: ["Moomoo Milk", "Item"],
	30: ["EnergyPowder", "Item"],
	31: ["Energy Root", "Item"],
	32: ["Heal Powder", "Item"],
	33: ["Revival Herb", "Item"],
	34: ["Ether", "Item"],
	35: ["Max Ether", "Item"],
	36: ["Elixir", "Item"],
	37: ["Max Elixir", "Item"],
	38: ["Lava Cookie", "Item"],
	39: ["Blue Flute", "Item"],
	40: ["Yellow Flute", "Item"],
	41: ["Red Flute", "Item"],
	42: ["Black Flute", "Item"],
	43: ["White Flute", "Item"],
	44: ["Berry Juice", "Item"],
	45: ["Sacred Ash", "Item"],
	46: ["Shoal Salt", "Item"],
	47: ["Shoal Shell", "Item"],
	48: ["Red Shard", "Item"],
	49: ["Blue Shard", "Item"],
	50: ["Yellow Shard", "Item"],
	51: ["Green Shard", "Item"],
	63: ["HP Up", "Item"],
	64: ["Protein", "Item"],
	65: ["Iron", "Item"],
	66: ["Carbos", "Item"],
	67: ["Calcium", "Item"],
	68: ["Rare Candy", "Item"],
	69: ["PP Up", "Item"],
	70: ["Zinc", "Item"],
	71: ["PP Max", "Item"],
	73: ["Guard Spec.", "Item"],
	74: ["Dire Hit", "Item"],
	75: ["X Attack", "Item"],
	76: ["X Defend", "Item"],
	77: ["X Speed", "Item"],
	78: ["X Accuracy", "Item"],
	79: ["X Special", "Item"],
	80: ["PokeDoll", "Item"],
	81: ["Fluffy Tail", "Item"],
	83: ["Super Repel", "Item"],
	84: ["Max Repel", "Item"],
	85: ["Escape Rope", "Item"],
	86: ["Repel", "Item"],
	93: ["Sun Stone", "Item"],
	94: ["Moon Stone", "Item"],
	95: ["Fire Stone", "Item"],
	96: ["Thunderstone", "Item"],
	97: ["Water Stone", "Item"],
	98: ["Leaf Stone", "Item"],
	103: ["TinyMushroom", "Item"],
	104: ["Big Mushroom", "Item"],
	106: ["Pearl", "Item"],
	107: ["Big Pearl", "Item"],
	108: ["Stardust", "Item"],
	109: ["Star Piece", "Item"],
	110: ["Nugget", "Item"],
	111: ["Heart Scale", "Item"],
	121: ["Orange Mail", "Item"],
	122: ["Harbor Mail", "Item"],
	123: ["Glitter Mail", "Item"],
	124: ["Mech Mail", "Item"],
	125: ["Wood Mail", "Item"],
	126: ["Wave Mail", "Item"],
	127: ["Bead Mail", "Item"],
	128: ["Shadow Mail", "Item"],
	129: ["Tropic Mail", "Item"],
	130: ["Dream Mail", "Item"],
	131: ["Fab Mail", "Item"],
	132: ["Retro Mail", "Item"],
	133: ["Cheri Berry", "Berry"],
	134: ["Chesto Berry", "Berry"],
	135: ["Pecha Berry", "Berry"],
	136: ["Rawst Berry", "Berry"],
	137: ["Aspear Berry", "Berry"],
	138: ["Leppa Berry", "Berry"],
	139: ["Oran Berry", "Berry"],
	140: ["Persim Berry", "Berry"],
	141: ["Lum Berry", "Berry"],
	142: ["Sitrus Berry", "Berry"],
	143: ["Figy Berry", "Berry"],
	144: ["Wiki Berry", "Berry"],
	145: ["Mago Berry", "Berry"],
	146: ["Aguav Berry", "Berry"],
	147: ["Iapapa Berry", "Berry"],
	148: ["Razz Berry", "Berry"],
	149: ["Bluk Berry", "Berry"],
	150: ["Nanab Berry", "Berry"],
	151: ["Wepear Berry", "Berry"],
	152: ["Pinap Berry", "Berry"],
	153: ["Pomeg Berry", "Berry"],
	154: ["Kelpsy Berry", "Berry"],
	155: ["Qualot Berry", "Berry"],
	156: ["Hondew Berry", "Berry"],
	157: ["Grepa Berry", "Berry"],
	158: ["Tamato Berry", "Berry"],
	159: ["Cornn Berry", "Berry"],
	160: ["Magost Berry", "Berry"],
	161: ["Rabuta Berry", "Berry"],
	162: ["Nomel Berry", "Berry"],
	163: ["Spelon Berry", "Berry"],
	164: ["Pamtre Berry", "Berry"],
	165: ["Watmel Berry", "Berry"],
	166: ["Durin Berry", "Berry"],
	167: ["Belue Berry", "Berry"],
	168: ["Liechi Berry", "Berry"],
	169: ["Ganlon Berry", "Berry"],
	170: ["Salac Berry", "Berry"],
	171: ["Petaya Berry", "Berry"],
	172: ["Apicot Berry", "Berry"],
	173: ["Lansat Berry", "Berry"],
	174: ["Starf Berry", "Berry"],
	175: ["Enigma Berry", "Berry"],
	179: ["BrightPowder", "Item"],
	180: ["White Herb", "Item"],
	181: ["Macho Brace", "Item"],
	182: ["Exp. Share", "Item"],
	183: ["Quick Claw", "Item"],
	184: ["Soothe Bell", "Item"],
	185: ["Mental Herb", "Item"],
	186: ["Choice Band", "Item"],
	187: ["King's Rock", "Item"],
	188: ["SilverPowder", "Item"],
	189: ["Amulet Coin", "Item"],
	190: ["Cleanse Tag", "Item"],
	191: ["Soul Dew", "Item"],
	192: ["DeepSeaTooth", "Item"],
	193: ["DeepSeaScale", "Item"],
	194: ["Smoke Ball", "Item"],
	195: ["Everstone", "Item"],
	196: ["Focus Band", "Item"],
	197: ["Lucky Egg", "Item"],
	198: ["Scope Lens", "Item"],
	199: ["Metal Coat", "Item"],
	200: ["Leftovers", "Item"],
	201: ["Dragon Scale", "Item"],
	202: ["Light Ball", "Item"],
	203: ["Soft Sand", "Item"],
	204: ["Hard Stone", "Item"],
	205: ["Miracle Seed", "Item"],
	206: ["BlackGlasses", "Item"],
	207: ["Black Belt", "Item"],
	208: ["Magnet", "Item"],
	209: ["Mystic Water", "Item"],
	210: ["Sharp Beak", "Item"],
	211: ["Poison Barb", "Item"],
	212: ["NeverMeltIce", "Item"],
	213: ["Spell Tag", "Item"],
	214: ["TwistedSpoon", "Item"],
	215: ["Charcoal", "Item"],
	216: ["Dragon Fang", "Item"],
	217: ["Silk Scarf", "Item"],
	218: ["Up-Grade", "Item"],
	219: ["Shell Bell", "Item"],
	220: ["Sea Incense", "Item"],
	221: ["Lax Incense", "Item"],
	222: ["Lucky Punch", "Item"],
	223: ["Metal Powder", "Item"],
	224: ["Thick Club", "Item"],
	225: ["Stick", "Item"],
	254: ["Red Scarf", "Item"],
	255: ["Blue Scarf", "Item"],
	256: ["Pink Scarf", "Item"],
	257: ["Green Scarf", "Item"],
	258: ["Yellow Scarf", "Item"],
	259: ["Mach Bike", "Key"],
	260: ["Coin Case", "Key"],
	261: ["Itemfinder", "Key"],
	262: ["Old Rod", "Key"],
	263: ["Good Rod", "Key"],
	264: ["Super Rod", "Key"],
	265: ["S.S. Ticket", "Key"],
	266: ["Contest Pass", "Key"],
	268: ["Wailmer Pail", "Key"],
	269: ["Devon Goods", "Key"],
	270: ["Soot Sack", "Key"],
	271: ["Basement Key", "Key"],
	272: ["Acro Bike", "Key"],
	273: ["Pok??block Case", "Key"],
	274: ["Letter", "Key"],
	275: ["Eon Ticket", "Key"],
	276: ["Red Orb", "Key"],
	277: ["Blue Orb", "Key"],
	278: ["Scanner", "Key"],
	279: ["Go-Goggles", "Key"],
	280: ["Meteorite", "Key"],
	281: ["Rm. 1 Key", "Key"],
	282: ["Rm. 2 Key", "Key"],
	283: ["Rm. 4 Key", "Key"],
	284: ["Rm. 6 Key", "Key"],
	285: ["Storage Key", "Key"],
	286: ["Root Fossil", "Key"],
	287: ["Claw Fossil", "Key"],
	288: ["Devon Scope", "Key"],
	289: ["TM01", "Disc"],
	290: ["TM02", "Disc"],
	291: ["TM03", "Disc"],
	292: ["TM04", "Disc"],
	293: ["TM05", "Disc"],
	294: ["TM06", "Disc"],
	295: ["TM07", "Disc"],
	296: ["TM08", "Disc"],
	297: ["TM09", "Disc"],
	298: ["TM10", "Disc"],
	299: ["TM11", "Disc"],
	300: ["TM12", "Disc"],
	301: ["TM13", "Disc"],
	302: ["TM14", "Disc"],
	303: ["TM15", "Disc"],
	304: ["TM16", "Disc"],
	305: ["TM17", "Disc"],
	306: ["TM18", "Disc"],
	307: ["TM19", "Disc"],
	308: ["TM20", "Disc"],
	309: ["TM21", "Disc"],
	310: ["TM22", "Disc"],
	311: ["TM23", "Disc"],
	312: ["TM24", "Disc"],
	313: ["TM25", "Disc"],
	314: ["TM26", "Disc"],
	315: ["TM27", "Disc"],
	316: ["TM28", "Disc"],
	317: ["TM29", "Disc"],
	318: ["TM30", "Disc"],
	319: ["TM31", "Disc"],
	320: ["TM32", "Disc"],
	321: ["TM33", "Disc"],
	322: ["TM34", "Disc"],
	323: ["TM35", "Disc"],
	324: ["TM36", "Disc"],
	325: ["TM37", "Disc"],
	326: ["TM38", "Disc"],
	327: ["TM39", "Disc"],
	328: ["TM40", "Disc"],
	329: ["TM41", "Disc"],
	330: ["TM42", "Disc"],
	331: ["TM43", "Disc"],
	332: ["TM44", "Disc"],
	333: ["TM45", "Disc"],
	334: ["TM46", "Disc"],
	335: ["TM47", "Disc"],
	336: ["TM48", "Disc"],
	337: ["TM49", "Disc"],
	338: ["TM50", "Disc"],
	339: ["HM01", "Disc"],
	340: ["HM02", "Disc"],
	341: ["HM03", "Disc"],
	342: ["HM04", "Disc"],
	343: ["HM05", "Disc"],
	344: ["HM06", "Disc"],
	345: ["HM07", "Disc"],
	346: ["HM08", "Disc"],
	349: ["Oak's Parcel", "Key"],
	350: ["PokeFlute", "Key"],
	351: ["Secret Key", "Key"],
	352: ["Bike Voucher", "Key"],
	353: ["Gold Teeth", "Key"],
	354: ["Old Amber", "Key"],
	355: ["Card Key", "Key"],
	356: ["Lift Key", "Key"],
	357: ["Helix Fossil", "Key"],
	358: ["Dome Fossil", "Key"],
	359: ["Silph Scope", "Key"],
	360: ["Bicycle", "Key"],
	361: ["Town Map", "Key"],
	362: ["VS Seeker", "Key"],
	363: ["Fame Checker", "Key"],
	364: ["TM Case", "Key"],
	365: ["Berry Pouch", "Key"],
	366: ["Teachy TV", "Key"],
	367: ["Tri-Pass", "Key"],
	368: ["Rainbow Pass", "Key"],
	369: ["Tea", "Key"],
	370: ["MysticTicket", "Key"],
	371: ["AuroraTicket", "Key"],
	372: ["Powder Jar", "Key"],
	373: ["Ruby", "Key"],
	374: ["Sapphire", "Key"],
	375: ["Magma Emblem", "Key"],
	376: ["Old Sea Map", "Key"],
	}
var pokeDict = {
	1: ["Bulbasaur", "Grass", "Poison", "64", "0", "0", "0", "1", "0", "0"],
	2: ["Ivysaur", "Grass", "Poison", "141", "0", "0", "0", "1", "1", "0"],
	3: ["Venusaur", "Grass", "Poison", "208", "0", "0", "0", "2", "1", "0"],
	4: ["Charmander", "Fire", "???", "65", "0", "0", "0", "0", "0", "1"],
	5: ["Charmeleon", "Fire", "???", "142", "0", "0", "0", "1", "0", "1"],
	6: ["Charizard", "Fire", "Flying", "209", "0", "0", "0", "3", "0", "0"],
	7: ["Squirtle", "Water", "???", "66", "0", "0", "1", "0", "0", "0"],
	8: ["Wartortle", "Water", "???", "143", "0", "0", "1", "0", "1", "0"],
	9: ["Blastoise", "Water", "???", "210", "0", "0", "0", "0", "3", "0"],
	10: ["Caterpie", "Bug", "???", "53", "1", "0", "0", "0", "0", "0"],
	11: ["Metapod", "Bug", "???", "72", "0", "0", "2", "0", "0", "0"],
	12: ["Butterfree", "Bug", "Flying", "160", "0", "0", "0", "2", "1", "0"],
	13: ["Weedle", "Bug", "Poison", "52", "0", "0", "0", "0", "0", "1"],
	14: ["Kakuna", "Bug", "Poison", "71", "0", "0", "2", "0", "0", "0"],
	15: ["Beedrill", "Bug", "Poison", "159", "0", "2", "0", "0", "1", "0"],
	16: ["Pidgey", "Normal", "Flying", "55", "0", "0", "0", "0", "0", "1"],
	17: ["Pidgeotto", "Normal", "Flying", "113", "0", "0", "0", "0", "0", "2"],
	18: ["Pidgeot", "Normal", "Flying", "172", "0", "0", "0", "0", "0", "3"],
	19: ["Rattata", "Normal", "???", "57", "0", "0", "0", "0", "0", "1"],
	20: ["Raticate", "Normal", "???", "116", "0", "0", "0", "0", "0", "2"],
	21: ["Spearow", "Normal", "Flying", "58", "0", "0", "0", "0", "0", "1"],
	22: ["Fearow", "Normal", "Flying", "162", "0", "0", "0", "0", "0", "2"],
	23: ["Ekans", "Poison", "???", "62", "0", "1", "0", "0", "0", "0"],
	24: ["Arbok", "Poison", "???", "147", "0", "2", "0", "0", "0", "0"],
	25: ["Pikachu", "Electric", "???", "82", "0", "0", "0", "0", "0", "2"],
	26: ["Raichu", "Electric", "???", "122", "0", "0", "0", "0", "0", "3"],
	27: ["Sandshrew", "Ground", "???", "93", "0", "0", "1", "0", "0", "0"],
	28: ["Sandslash", "Ground", "???", "163", "0", "0", "2", "0", "0", "0"],
	29: ["NidoranF", "Poison", "???", "59", "1", "0", "0", "0", "0", "0"],
	30: ["Nidorina", "Poison", "???", "117", "2", "0", "0", "0", "0", "0"],
	31: ["Nidoqueen", "Poison", "Ground", "194", "3", "0", "0", "0", "0", "0"],
	32: ["NidoranM", "Poison", "???", "60", "0", "1", "0", "0", "0", "0"],
	33: ["Nidorino", "Poison", "???", "118", "0", "2", "0", "0", "0", "0"],
	34: ["Nidoking", "Poison", "Ground", "195", "0", "3", "0", "0", "0", "0"],
	35: ["Clefairy", "Normal", "???", "68", "2", "0", "0", "0", "0", "0"],
	36: ["Clefable", "Normal", "???", "129", "3", "0", "0", "0", "0", "0"],
	37: ["Vulpix", "Fire", "???", "63", "0", "0", "0", "0", "0", "1"],
	38: ["Ninetales", "Fire", "???", "178", "0", "0", "0", "1", "1", "0"],
	39: ["Jigglypuff", "Normal", "???", "76", "2", "0", "0", "0", "0", "0"],
	40: ["Wigglytuff", "Normal", "???", "109", "3", "0", "0", "0", "0", "0"],
	41: ["Zubat", "Poison", "Flying", "54", "0", "0", "0", "0", "0", "1"],
	42: ["Golbat", "Poison", "Flying", "171", "0", "0", "0", "0", "0", "2"],
	43: ["Oddish", "Grass", "Poison", "78", "0", "0", "0", "1", "0", "0"],
	44: ["Gloom", "Grass", "Poison", "132", "0", "0", "0", "2", "0", "0"],
	45: ["Vileplume", "Grass", "Poison", "184", "0", "0", "0", "3", "0", "0"],
	46: ["Paras", "Bug", "Grass", "70", "0", "1", "0", "0", "0", "0"],
	47: ["Parasect", "Bug", "Grass", "128", "0", "2", "1", "0", "0", "0"],
	48: ["Venonat", "Bug", "Poison", "75", "0", "0", "0", "0", "1", "0"],
	49: ["Venomoth", "Bug", "Poison", "138", "0", "0", "0", "1", "0", "1"],
	50: ["Diglett", "Ground", "???", "81", "0", "0", "0", "0", "0", "1"],
	51: ["Dugtrio", "Ground", "???", "153", "0", "0", "0", "0", "0", "2"],
	52: ["Meowth", "Normal", "???", "69", "0", "0", "0", "0", "0", "1"],
	53: ["Persian", "Normal", "???", "148", "0", "0", "0", "0", "0", "2"],
	54: ["Psyduck", "Water", "???", "80", "0", "0", "0", "1", "0", "0"],
	55: ["Golduck", "Water", "???", "174", "0", "0", "0", "2", "0", "0"],
	56: ["Mankey", "Fighting", "???", "74", "0", "1", "0", "0", "0", "0"],
	57: ["Primeape", "Fighting", "???", "149", "0", "2", "0", "0", "0", "0"],
	58: ["Growlithe", "Fire", "???", "91", "0", "1", "0", "0", "0", "0"],
	59: ["Arcanine", "Fire", "???", "213", "0", "2", "0", "0", "0", "0"],
	60: ["Poliwag", "Water", "???", "77", "0", "0", "0", "0", "0", "1"],
	61: ["Poliwhirl", "Water", "???", "131", "0", "0", "0", "0", "0", "2"],
	62: ["Poliwrath", "Water", "Fighting", "185", "0", "0", "3", "0", "0", "0"],
	63: ["Abra", "Psychic", "???", "73", "0", "0", "0", "1", "0", "0"],
	64: ["Kadabra", "Psychic", "???", "145", "0", "0", "0", "2", "0", "0"],
	65: ["Alakazam", "Psychic", "???", "186", "0", "0", "0", "3", "0", "0"],
	66: ["Machop", "Fighting", "???", "88", "0", "1", "0", "0", "0", "0"],
	67: ["Machoke", "Fighting", "???", "146", "0", "2", "0", "0", "0", "0"],
	68: ["Machamp", "Fighting", "???", "193", "0", "3", "0", "0", "0", "0"],
	69: ["Bellsprout", "Grass", "Poison", "84", "0", "1", "0", "0", "0", "0"],
	70: ["Weepinbell", "Grass", "Poison", "151", "0", "2", "0", "0", "0", "0"],
	71: ["Victreebel", "Grass", "Poison", "191", "0", "3", "0", "0", "0", "0"],
	72: ["Tentacool", "Water", "Poison", "105", "0", "0", "0", "0", "1", "0"],
	73: ["Tentacruel", "Water", "Poison", "205", "0", "0", "0", "0", "2", "0"],
	74: ["Geodude", "Rock", "Ground", "86", "0", "0", "1", "0", "0", "0"],
	75: ["Graveler", "Rock", "Ground", "134", "0", "0", "2", "0", "0", "0"],
	76: ["Golem", "Rock", "Ground", "177", "0", "0", "3", "0", "0", "0"],
	77: ["Ponyta", "Fire", "???", "152", "0", "0", "0", "0", "0", "1"],
	78: ["Rapidash", "Fire", "???", "192", "0", "0", "0", "0", "0", "2"],
	79: ["Slowpoke", "Water", "Psychic", "99", "1", "0", "0", "0", "0", "0"],
	80: ["Slowbro", "Water", "Psychic", "164", "0", "0", "2", "0", "0", "0"],
	81: ["Magnemite", "Electric", "Steel", "89", "0", "0", "0", "1", "0", "0"],
	82: ["Magneton", "Electric", "Steel", "161", "0", "0", "0", "2", "0", "0"],
	83: ["Farfetch'd", "Normal", "Flying", "94", "0", "1", "0", "0", "0", "0"],
	84: ["Doduo", "Normal", "Flying", "96", "0", "1", "0", "0", "0", "0"],
	85: ["Dodrio", "Normal", "Flying", "158", "0", "2", "0", "0", "0", "0"],
	86: ["Seel", "Water", "???", "100", "0", "0", "0", "0", "1", "0"],
	87: ["Dewgong", "Water", "Ice", "176", "0", "0", "0", "0", "2", "0"],
	88: ["Grimer", "Poison", "???", "90", "1", "0", "0", "0", "0", "0"],
	89: ["Muk", "Poison", "???", "157", "1", "1", "0", "0", "0", "0"],
	90: ["Shellder", "Water", "???", "97", "0", "0", "1", "0", "0", "0"],
	91: ["Cloyster", "Water", "Ice", "203", "0", "0", "2", "0", "0", "0"],
	92: ["Gastly", "Ghost", "Poison", "95", "0", "0", "0", "1", "0", "0"],
	93: ["Haunter", "Ghost", "Poison", "126", "0", "0", "0", "2", "0", "0"],
	94: ["Gengar", "Ghost", "Poison", "190", "0", "0", "0", "3", "0", "0"],
	95: ["Onix", "Rock", "Ground", "108", "0", "0", "1", "0", "0", "0"],
	96: ["Drowzee", "Psychic", "???", "102", "0", "0", "0", "0", "1", "0"],
	97: ["Hypno", "Psychic", "???", "165", "0", "0", "0", "0", "2", "0"],
	98: ["Krabby", "Water", "???", "115", "0", "1", "0", "0", "0", "0"],
	99: ["Kingler", "Water", "???", "206", "0", "2", "0", "0", "0", "0"],
	100: ["Voltorb", "Electric", "???", "103", "0", "0", "0", "0", "0", "1"],
	101: ["Electrode", "Electric", "???", "150", "0", "0", "0", "0", "0", "2"],
	102: ["Exeggcute", "Grass", "Psychic", "98", "0", "0", "1", "0", "0", "0"],
	103: ["Exeggutor", "Grass", "Psychic", "212", "0", "0", "0", "2", "0", "0"],
	104: ["Cubone", "Ground", "???", "87", "0", "0", "1", "0", "0", "0"],
	105: ["Marowak", "Ground", "???", "124", "0", "0", "2", "0", "0", "0"],
	106: ["Hitmonlee", "Fighting", "???", "139", "0", "2", "0", "0", "0", "0"],
	107: ["Hitmonchan", "Fighting", "???", "140", "0", "0", "0", "0", "2", "0"],
	108: ["Lickitung", "Normal", "???", "127", "2", "0", "0", "0", "0", "0"],
	109: ["Koffing", "Poison", "???", "114", "0", "0", "1", "0", "0", "0"],
	110: ["Weezing", "Poison", "???", "173", "0", "0", "2", "0", "0", "0"],
	111: ["Rhyhorn", "Ground", "Rock", "135", "0", "0", "1", "0", "0", "0"],
	112: ["Rhydon", "Ground", "Rock", "204", "0", "2", "0", "0", "0", "0"],
	113: ["Chansey", "Normal", "???", "255", "2", "0", "0", "0", "0", "0"],
	114: ["Tangela", "Grass", "???", "166", "0", "0", "1", "0", "0", "0"],
	115: ["Kangaskhan", "Normal", "???", "175", "2", "0", "0", "0", "0", "0"],
	116: ["Horsea", "Water", "???", "83", "0", "0", "0", "1", "0", "0"],
	117: ["Seadra", "Water", "???", "155", "0", "0", "1", "1", "0", "0"],
	118: ["Goldeen", "Water", "???", "111", "0", "1", "0", "0", "0", "0"],
	119: ["Seaking", "Water", "???", "170", "0", "2", "0", "0", "0", "0"],
	120: ["Staryu", "Water", "???", "106", "0", "0", "0", "0", "0", "1"],
	121: ["Starmie", "Water", "Psychic", "207", "0", "0", "0", "0", "0", "2"],
	122: ["Mr. Mime", "Psychic", "???", "136", "0", "0", "0", "0", "2", "0"],
	123: ["Scyther", "Bug", "Flying", "187", "0", "1", "0", "0", "0", "0"],
	124: ["Jynx", "Ice", "Psychic", "137", "0", "0", "0", "2", "0", "0"],
	125: ["Electabuzz", "Electric", "???", "156", "0", "0", "0", "0", "0", "2"],
	126: ["Magmar", "Fire", "???", "167", "0", "0", "0", "2", "0", "0"],
	127: ["Pinsir", "Bug", "???", "200", "0", "2", "0", "0", "0", "0"],
	128: ["Tauros", "Normal", "???", "211", "0", "1", "0", "0", "0", "1"],
	129: ["Magikarp", "Water", "???", "20", "0", "0", "0", "0", "0", "1"],
	130: ["Gyarados", "Water", "Flying", "214", "0", "2", "0", "0", "0", "0"],
	131: ["Lapras", "Water", "Ice", "219", "2", "0", "0", "0", "0", "0"],
	132: ["Ditto", "Normal", "???", "61", "1", "0", "0", "0", "0", "0"],
	133: ["Eevee", "Normal", "???", "92", "0", "0", "0", "0", "1", "0"],
	134: ["Vaporeon", "Water", "???", "196", "2", "0", "0", "0", "0", "0"],
	135: ["Jolteon", "Electric", "???", "197", "0", "0", "0", "0", "0", "2"],
	136: ["Flareon", "Fire", "???", "198", "0", "2", "0", "0", "0", "0"],
	137: ["Porygon", "Normal", "???", "130", "0", "0", "0", "1", "0", "0"],
	138: ["Omanyte", "Rock", "Water", "120", "0", "0", "1", "0", "0", "0"],
	139: ["Omastar", "Rock", "Water", "199", "0", "0", "2", "0", "0", "0"],
	140: ["Kabuto", "Rock", "Water", "119", "0", "0", "1", "0", "0", "0"],
	141: ["Kabutops", "Rock", "Water", "201", "0", "2", "0", "0", "0", "0"],
	142: ["Aerodactyl", "Rock", "Flying", "202", "0", "0", "0", "0", "0", "2"],
	143: ["Snorlax", "Normal", "???", "154", "2", "0", "0", "0", "0", "0"],
	144: ["Articuno", "Ice", "Flying", "215", "0", "0", "0", "0", "3", "0"],
	145: ["Zapdos", "Electric", "Flying", "216", "0", "0", "0", "3", "0", "0"],
	146: ["Moltres", "Fire", "Flying", "217", "0", "0", "0", "3", "0", "0"],
	147: ["Dratini", "Dragon", "???", "67", "0", "1", "0", "0", "0", "0"],
	148: ["Dragonair", "Dragon", "???", "144", "0", "2", "0", "0", "0", "0"],
	149: ["Dragonite", "Dragon", "Flying", "218", "0", "3", "0", "0", "0", "0"],
	150: ["Mewtwo", "Psychic", "???", "220", "0", "0", "0", "3", "0", "0"],
	151: ["Mew", "Psychic", "???", "64", "3", "0", "0", "0", "0", "0"],
	152: ["Chikorita", "Grass", "???", "64", "0", "0", "0", "0", "1", "0"],
	153: ["Bayleef", "Grass", "???", "141", "0", "0", "1", "0", "1", "0"],
	154: ["Meganium", "Grass", "???", "208", "0", "0", "1", "0", "2", "0"],
	155: ["Cyndaquil", "Fire", "???", "65", "0", "0", "0", "0", "0", "1"],
	156: ["Quilava", "Fire", "???", "142", "0", "0", "0", "1", "0", "1"],
	157: ["Typhlosion", "Fire", "???", "209", "0", "0", "0", "3", "0", "0"],
	158: ["Totodile", "Water", "???", "66", "0", "1", "0", "0", "0", "0"],
	159: ["Croconaw", "Water", "???", "143", "0", "1", "1", "0", "0", "0"],
	160: ["Feraligatr", "Water", "???", "210", "0", "2", "1", "0", "0", "0"],
	161: ["Sentret", "Normal", "???", "57", "0", "1", "0", "0", "0", "0"],
	162: ["Furret", "Normal", "???", "116", "0", "0", "0", "0", "0", "2"],
	163: ["Hoothoot", "Normal", "Flying", "58", "1", "0", "0", "0", "0", "0"],
	164: ["Noctowl", "Normal", "Flying", "162", "2", "0", "0", "0", "0", "0"],
	165: ["Ledyba", "Bug", "Flying", "54", "0", "0", "0", "0", "1", "0"],
	166: ["Ledian", "Bug", "Flying", "134", "0", "0", "0", "0", "2", "0"],
	167: ["Spinarak", "Bug", "Poison", "54", "0", "1", "0", "0", "0", "0"],
	168: ["Ariados", "Bug", "Poison", "134", "0", "2", "0", "0", "0", "0"],
	169: ["Crobat", "Poison", "Flying", "204", "0", "0", "0", "0", "0", "3"],
	170: ["Chinchou", "Water", "Electric", "90", "1", "0", "0", "0", "0", "0"],
	171: ["Lanturn", "Water", "Electric", "156", "2", "0", "0", "0", "0", "0"],
	172: ["Pichu", "Electric", "???", "42", "0", "0", "0", "0", "0", "1"],
	173: ["Cleffa", "Normal", "???", "37", "0", "0", "0", "0", "1", "0"],
	174: ["Igglybuff", "Normal", "???", "39", "1", "0", "0", "0", "0", "0"],
	175: ["Togepi", "Normal", "???", "74", "0", "0", "0", "0", "1", "0"],
	176: ["Togetic", "Normal", "Flying", "114", "0", "0", "0", "0", "2", "0"],
	177: ["Natu", "Psychic", "Flying", "73", "0", "0", "0", "1", "0", "0"],
	178: ["Xatu", "Psychic", "Flying", "171", "0", "0", "0", "1", "0", "1"],
	179: ["Mareep", "Electric", "???", "59", "0", "0", "0", "1", "0", "0"],
	180: ["Flaaffy", "Electric", "???", "117", "0", "0", "0", "2", "0", "0"],
	181: ["Ampharos", "Electric", "???", "194", "0", "0", "0", "3", "0", "0"],
	182: ["Bellossom", "Grass", "???", "184", "0", "0", "0", "0", "3", "0"],
	183: ["Marill", "Water", "???", "58", "2", "0", "0", "0", "0", "0"],
	184: ["Azumarill", "Water", "???", "153", "3", "0", "0", "0", "0", "0"],
	185: ["Sudowoodo", "Rock", "???", "135", "0", "0", "2", "0", "0", "0"],
	186: ["Politoed", "Water", "???", "185", "0", "0", "0", "0", "3", "0"],
	187: ["Hoppip", "Grass", "Flying", "74", "0", "0", "0", "0", "1", "0"],
	188: ["Skiploom", "Grass", "Flying", "136", "0", "0", "0", "0", "0", "2"],
	189: ["Jumpluff", "Grass", "Flying", "176", "0", "0", "0", "0", "0", "3"],
	190: ["Aipom", "Normal", "???", "94", "0", "0", "0", "0", "0", "1"],
	191: ["Sunkern", "Grass", "???", "52", "0", "0", "0", "1", "0", "0"],
	192: ["Sunflora", "Grass", "???", "146", "0", "0", "0", "2", "0", "0"],
	193: ["Yanma", "Bug", "Flying", "147", "0", "0", "0", "0", "0", "1"],
	194: ["Wooper", "Water", "Ground", "52", "1", "0", "0", "0", "0", "0"],
	195: ["Quagsire", "Water", "Ground", "137", "2", "0", "0", "0", "0", "0"],
	196: ["Espeon", "Psychic", "???", "197", "0", "0", "0", "2", "0", "0"],
	197: ["Umbreon", "Dark", "???", "197", "0", "0", "0", "0", "2", "0"],
	198: ["Murkrow", "Dark", "Flying", "107", "0", "0", "0", "0", "0", "1"],
	199: ["Slowking", "Water", "Psychic", "164", "0", "0", "0", "0", "3", "0"],
	200: ["Misdreavus", "Ghost", "???", "147", "0", "0", "0", "1", "1", "0"],
	201: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	202: ["Wobbuffet", "Psychic", "???", "177", "2", "0", "0", "0", "0", "0"],
	203: ["Girafarig", "Normal", "Psychic", "149", "0", "0", "0", "2", "0", "0"],
	204: ["Pineco", "Bug", "???", "60", "0", "0", "1", "0", "0", "0"],
	205: ["Forretress", "Bug", "Steel", "118", "0", "0", "2", "0", "0", "0"],
	206: ["Dunsparce", "Normal", "???", "75", "1", "0", "0", "0", "0", "0"],
	207: ["Gligar", "Ground", "Flying", "108", "0", "0", "1", "0", "0", "0"],
	208: ["Steelix", "Steel", "Ground", "196", "0", "0", "2", "0", "0", "0"],
	209: ["Snubbull", "Normal", "???", "63", "0", "1", "0", "0", "0", "0"],
	210: ["Granbull", "Normal", "???", "178", "0", "2", "0", "0", "0", "0"],
	211: ["Qwilfish", "Water", "Poison", "100", "0", "1", "0", "0", "0", "0"],
	212: ["Scizor", "Bug", "Steel", "200", "0", "2", "0", "0", "0", "0"],
	213: ["Shuckle", "Bug", "Rock", "80", "0", "0", "1", "0", "1", "0"],
	214: ["Heracross", "Bug", "Fighting", "200", "0", "2", "0", "0", "0", "0"],
	215: ["Sneasel", "Dark", "Ice", "132", "0", "0", "0", "0", "0", "1"],
	216: ["Teddiursa", "Normal", "???", "124", "0", "1", "0", "0", "0", "0"],
	217: ["Ursaring", "Normal", "???", "189", "0", "2", "0", "0", "0", "0"],
	218: ["Slugma", "Fire", "???", "78", "0", "0", "0", "1", "0", "0"],
	219: ["Magcargo", "Fire", "Rock", "154", "0", "0", "2", "0", "0", "0"],
	220: ["Swinub", "Ice", "Ground", "78", "0", "1", "0", "0", "0", "0"],
	221: ["Piloswine", "Ice", "Ground", "160", "1", "1", "0", "0", "0", "0"],
	222: ["Corsola", "Water", "Rock", "113", "0", "0", "1", "0", "1", "0"],
	223: ["Remoraid", "Water", "???", "78", "0", "0", "0", "1", "0", "0"],
	224: ["Octillery", "Water", "???", "164", "0", "1", "0", "1", "0", "0"],
	225: ["Delibird", "Ice", "Flying", "183", "0", "0", "0", "0", "0", "1"],
	226: ["Mantine", "Water", "Flying", "168", "0", "0", "0", "0", "2", "0"],
	227: ["Skarmory", "Steel", "Flying", "168", "0", "0", "2", "0", "0", "0"],
	228: ["Houndour", "Dark", "Fire", "114", "0", "0", "0", "1", "0", "0"],
	229: ["Houndoom", "Dark", "Fire", "204", "0", "0", "0", "2", "0", "0"],
	230: ["Kingdra", "Water", "Dragon", "207", "0", "1", "0", "1", "1", "0"],
	231: ["Phanpy", "Ground", "???", "124", "1", "0", "0", "0", "0", "0"],
	232: ["Donphan", "Ground", "???", "189", "0", "1", "1", "0", "0", "0"],
	233: ["Porygon2", "Normal", "???", "180", "0", "0", "0", "2", "0", "0"],
	234: ["Stantler", "Normal", "???", "165", "0", "1", "0", "0", "0", "0"],
	235: ["Smeargle", "Normal", "???", "106", "0", "0", "0", "0", "0", "1"],
	236: ["Tyrogue", "Fighting", "???", "91", "0", "1", "0", "0", "0", "0"],
	237: ["Hitmontop", "Fighting", "???", "138", "0", "0", "0", "0", "2", "0"],
	238: ["Smoochum", "Ice", "Psychic", "87", "0", "0", "0", "1", "0", "0"],
	239: ["Elekid", "Electric", "???", "106", "0", "0", "0", "0", "0", "1"],
	240: ["Magby", "Fire", "???", "117", "0", "0", "0", "0", "0", "1"],
	241: ["Miltank", "Normal", "???", "200", "0", "0", "2", "0", "0", "0"],
	242: ["Blissey", "Normal", "???", "255", "3", "0", "0", "0", "0", "0"],
	243: ["Raikou", "Electric", "???", "216", "0", "0", "0", "1", "0", "2"],
	244: ["Entei", "Fire", "???", "217", "1", "2", "0", "0", "0", "0"],
	245: ["Suicune", "Water", "???", "215", "0", "0", "1", "0", "2", "0"],
	246: ["Larvitar", "Rock", "Ground", "67", "0", "1", "0", "0", "0", "0"],
	247: ["Pupitar", "Rock", "Ground", "144", "0", "2", "0", "0", "0", "0"],
	248: ["Tyranitar", "Rock", "Dark", "218", "0", "3", "0", "0", "0", "0"],
	249: ["Lugia", "Psychic", "Flying", "220", "0", "0", "0", "0", "3", "0"],
	250: ["Ho-Oh", "Fire", "Flying", "220", "0", "0", "0", "0", "3", "0"],
	251: ["Celebi", "Psychic", "Grass", "64", "3", "0", "0", "0", "0", "0"],
	277: ["Treecko", "Grass", "???", "65", "0", "0", "0", "0", "0", "1"],
	278: ["Grovyle", "Grass", "???", "141", "0", "0", "0", "0", "0", "2"],
	279: ["Sceptile", "Grass", "???", "208", "0", "0", "0", "0", "0", "3"],
	280: ["Torchic", "Fire", "???", "65", "0", "0", "0", "1", "0", "0"],
	281: ["Combusken", "Fire", "Fighting", "142", "0", "1", "0", "1", "0", "0"],
	282: ["Blaziken", "Fire", "Fighting", "209", "0", "3", "0", "0", "0", "0"],
	283: ["Mudkip", "Water", "???", "65", "0", "1", "0", "0", "0", "0"],
	284: ["Marshtomp", "Water", "Ground", "143", "0", "2", "0", "0", "0", "0"],
	285: ["Swampert", "Water", "Ground", "210", "0", "3", "0", "0", "0", "0"],
	286: ["Poochyena", "Dark", "???", "55", "0", "1", "0", "0", "0", "0"],
	287: ["Mightyena", "Dark", "???", "128", "0", "2", "0", "0", "0", "0"],
	288: ["Zigzagoon", "Normal", "???", "60", "0", "0", "0", "0", "0", "1"],
	289: ["Linoone", "Normal", "???", "128", "0", "0", "0", "0", "0", "2"],
	290: ["Wurmple", "Bug", "???", "54", "1", "0", "0", "0", "0", "0"],
	291: ["Silcoon", "Bug", "???", "71", "0", "0", "2", "0", "0", "0"],
	292: ["Beautifly", "Bug", "Flying", "161", "0", "0", "0", "3", "0", "0"],
	293: ["Cascoon", "Bug", "???", "72", "0", "0", "2", "0", "0", "0"],
	294: ["Dustox", "Bug", "Poison", "160", "0", "0", "0", "0", "3", "0"],
	295: ["Lotad", "Water", "Grass", "74", "0", "0", "0", "0", "1", "0"],
	296: ["Lombre", "Water", "Grass", "141", "0", "0", "0", "0", "2", "0"],
	297: ["Ludicolo", "Water", "Grass", "181", "0", "0", "0", "0", "3", "0"],
	298: ["Seedot", "Grass", "???", "74", "0", "0", "1", "0", "0", "0"],
	299: ["Nuzleaf", "Grass", "Dark", "141", "0", "2", "0", "0", "0", "0"],
	300: ["Shiftry", "Grass", "Dark", "181", "0", "3", "0", "0", "0", "0"],
	301: ["Nincada", "Bug", "Ground", "65", "0", "0", "1", "0", "0", "0"],
	302: ["Ninjask", "Bug", "Flying", "155", "0", "0", "0", "0", "0", "2"],
	303: ["Shedinja", "Bug", "Ghost", "95", "2", "0", "0", "0", "0", "0"],
	304: ["Taillow", "Normal", "Flying", "59", "0", "0", "0", "0", "0", "1"],
	305: ["Swellow", "Normal", "Flying", "162", "0", "0", "0", "0", "0", "2"],
	306: ["Shroomish", "Grass", "???", "65", "1", "0", "0", "0", "0", "0"],
	307: ["Breloom", "Grass", "Fighting", "165", "0", "2", "0", "0", "0", "0"],
	308: ["Spinda", "Normal", "???", "85", "0", "0", "0", "1", "0", "0"],
	309: ["Wingull", "Water", "Flying", "64", "0", "0", "0", "0", "0", "1"],
	310: ["Pelipper", "Water", "Flying", "164", "0", "0", "2", "0", "0", "0"],
	311: ["Surskit", "Bug", "Water", "63", "0", "0", "0", "0", "0", "1"],
	312: ["Masquerain", "Bug", "Flying", "128", "0", "0", "0", "1", "1", "0"],
	313: ["Wailmer", "Water", "???", "137", "1", "0", "0", "0", "0", "0"],
	314: ["Wailord", "Water", "???", "206", "2", "0", "0", "0", "0", "0"],
	315: ["Skitty", "Normal", "???", "65", "0", "0", "0", "0", "0", "1"],
	316: ["Delcatty", "Normal", "???", "138", "1", "0", "0", "0", "0", "1"],
	317: ["Kecleon", "Normal", "???", "132", "0", "0", "0", "0", "1", "0"],
	318: ["Baltoy", "Ground", "Psychic", "58", "0", "0", "0", "0", "1", "0"],
	319: ["Claydol", "Ground", "Psychic", "189", "0", "0", "0", "0", "2", "0"],
	320: ["Nosepass", "Rock", "???", "108", "0", "0", "1", "0", "0", "0"],
	321: ["Torkoal", "Fire", "???", "161", "0", "0", "2", "0", "0", "0"],
	322: ["Sableye", "Dark", "Ghost", "98", "0", "1", "1", "0", "0", "0"],
	323: ["Barboach", "Water", "Ground", "92", "1", "0", "0", "0", "0", "0"],
	324: ["Whiscash", "Water", "Ground", "158", "2", "0", "0", "0", "0", "0"],
	325: ["Luvdisc", "Water", "???", "110", "0", "0", "0", "0", "0", "1"],
	326: ["Corphish", "Water", "???", "111", "0", "1", "0", "0", "0", "0"],
	327: ["Crawdaunt", "Water", "Dark", "161", "0", "2", "0", "0", "0", "0"],
	328: ["Feebas", "Water", "???", "61", "0", "0", "0", "0", "0", "1"],
	329: ["Milotic", "Water", "???", "213", "0", "0", "0", "0", "2", "0"],
	330: ["Carvanha", "Water", "Dark", "88", "0", "1", "0", "0", "0", "0"],
	331: ["Sharpedo", "Water", "Dark", "175", "0", "2", "0", "0", "0", "0"],
	332: ["Trapinch", "Ground", "???", "73", "0", "1", "0", "0", "0", "0"],
	333: ["Vibrava", "Ground", "Dragon", "126", "0", "1", "0", "0", "0", "1"],
	334: ["Flygon", "Ground", "Dragon", "197", "0", "1", "0", "0", "0", "2"],
	335: ["Makuhita", "Fighting", "???", "87", "1", "0", "0", "0", "0", "0"],
	336: ["Hariyama", "Fighting", "???", "184", "2", "0", "0", "0", "0", "0"],
	337: ["Electrike", "Electric", "???", "104", "0", "0", "0", "0", "0", "1"],
	338: ["Manectric", "Electric", "???", "168", "0", "0", "0", "0", "0", "2"],
	339: ["Numel", "Fire", "Ground", "88", "0", "0", "0", "1", "0", "0"],
	340: ["Camerupt", "Fire", "Ground", "175", "0", "1", "0", "1", "0", "0"],
	341: ["Spheal", "Ice", "Water", "75", "1", "0", "0", "0", "0", "0"],
	342: ["Sealeo", "Ice", "Water", "128", "2", "0", "0", "0", "0", "0"],
	343: ["Walrein", "Ice", "Water", "192", "3", "0", "0", "0", "0", "0"],
	344: ["Cacnea", "Grass", "???", "97", "0", "0", "0", "1", "0", "0"],
	345: ["Cacturne", "Grass", "Dark", "177", "0", "1", "0", "1", "0", "0"],
	346: ["Snorunt", "Ice", "???", "74", "1", "0", "0", "0", "0", "0"],
	347: ["Glalie", "Ice", "???", "187", "2", "0", "0", "0", "0", "0"],
	348: ["Lunatone", "Rock", "Psychic", "150", "0", "0", "0", "2", "0", "0"],
	349: ["Solrock", "Rock", "Psychic", "150", "0", "2", "0", "0", "0", "0"],
	350: ["Azurill", "Normal", "???", "33", "1", "0", "0", "0", "0", "0"],
	351: ["Spoink", "Psychic", "???", "89", "0", "0", "0", "0", "1", "0"],
	352: ["Grumpig", "Psychic", "???", "164", "0", "0", "0", "0", "2", "0"],
	353: ["Plusle", "Electric", "???", "120", "0", "0", "0", "0", "0", "1"],
	354: ["Minun", "Electric", "???", "120", "0", "0", "0", "0", "0", "1"],
	355: ["Mawile", "Steel", "???", "98", "0", "1", "1", "0", "0", "0"],
	356: ["Meditite", "Fighting", "Psychic", "91", "0", "0", "0", "0", "0", "1"],
	357: ["Medicham", "Fighting", "Psychic", "153", "0", "0", "0", "0", "0", "2"],
	358: ["Swablu", "Normal", "Flying", "74", "0", "0", "0", "0", "1", "0"],
	359: ["Altaria", "Dragon", "Flying", "188", "0", "0", "0", "0", "2", "0"],
	360: ["Wynaut", "Psychic", "???", "44", "1", "0", "0", "0", "0", "0"],
	361: ["Duskull", "Ghost", "???", "97", "0", "0", "0", "0", "1", "0"],
	362: ["Dusclops", "Ghost", "???", "179", "0", "0", "1", "0", "1", "0"],
	363: ["Roselia", "Grass", "Poison", "152", "0", "0", "0", "1", "0", "0"],
	364: ["Slakoth", "Normal", "???", "83", "1", "0", "0", "0", "0", "0"],
	365: ["Vigoroth", "Normal", "???", "126", "0", "0", "0", "0", "0", "2"],
	366: ["Slaking", "Normal", "???", "210", "3", "0", "0", "0", "0", "0"],
	367: ["Gulpin", "Poison", "???", "75", "1", "0", "0", "0", "0", "0"],
	368: ["Swalot", "Poison", "???", "168", "2", "0", "0", "0", "0", "0"],
	369: ["Tropius", "Grass", "Flying", "169", "2", "0", "0", "0", "0", "0"],
	370: ["Whismur", "Normal", "???", "68", "1", "0", "0", "0", "0", "0"],
	371: ["Loudred", "Normal", "???", "126", "2", "0", "0", "0", "0", "0"],
	372: ["Exploud", "Normal", "???", "184", "3", "0", "0", "0", "0", "0"],
	373: ["Clamperl", "Water", "???", "142", "0", "0", "1", "0", "0", "0"],
	374: ["Huntail", "Water", "???", "178", "0", "1", "1", "0", "0", "0"],
	375: ["Gorebyss", "Water", "???", "178", "0", "0", "0", "2", "0", "0"],
	376: ["Absol", "Dark", "???", "174", "0", "2", "0", "0", "0", "0"],
	377: ["Shuppet", "Ghost", "???", "97", "0", "1", "0", "0", "0", "0"],
	378: ["Banette", "Ghost", "???", "179", "0", "2", "0", "0", "0", "0"],
	379: ["Seviper", "Poison", "???", "165", "0", "1", "0", "1", "0", "0"],
	380: ["Zangoose", "Normal", "???", "165", "0", "2", "0", "0", "0", "0"],
	381: ["Relicanth", "Rock", "Water", "198", "1", "0", "1", "0", "0", "0"],
	382: ["Aron", "Steel", "Rock", "96", "0", "0", "1", "0", "0", "0"],
	383: ["Lairon", "Steel", "Rock", "152", "0", "0", "2", "0", "0", "0"],
	384: ["Aggron", "Steel", "Rock", "205", "0", "0", "3", "0", "0", "0"],
	385: ["Castform", "Normal", "???", "145", "1", "0", "0", "0", "0", "0"],
	386: ["Volbeat", "Bug", "???", "146", "0", "0", "0", "0", "0", "1"],
	387: ["Illumise", "Bug", "???", "146", "0", "0", "0", "0", "0", "1"],
	388: ["Lileep", "Rock", "Grass", "121", "0", "0", "0", "0", "1", "0"],
	389: ["Cradily", "Rock", "Grass", "201", "0", "0", "0", "0", "2", "0"],
	390: ["Anorith", "Rock", "Bug", "119", "0", "1", "0", "0", "0", "0"],
	391: ["Armaldo", "Rock", "Bug", "200", "0", "2", "0", "0", "0", "0"],
	392: ["Ralts", "Psychic", "???", "70", "0", "0", "0", "1", "0", "0"],
	393: ["Kirlia", "Psychic", "???", "140", "0", "0", "0", "2", "0", "0"],
	394: ["Gardevoir", "Psychic", "???", "208", "0", "0", "0", "3", "0", "0"],
	395: ["Bagon", "Dragon", "???", "89", "0", "1", "0", "0", "0", "0"],
	396: ["Shelgon", "Dragon", "???", "144", "0", "0", "2", "0", "0", "0"],
	397: ["Salamence", "Dragon", "Flying", "218", "0", "3", "0", "0", "0", "0"],
	398: ["Beldum", "Steel", "Psychic", "103", "0", "0", "1", "0", "0", "0"],
	399: ["Metang", "Steel", "Psychic", "153", "0", "0", "2", "0", "0", "0"],
	400: ["Metagross", "Steel", "Psychic", "210", "0", "0", "3", "0", "0", "0"],
	401: ["Regirock", "Rock", "???", "217", "0", "0", "3", "0", "0", "0"],
	402: ["Regice", "Ice", "???", "216", "0", "0", "0", "0", "3", "0"],
	403: ["Registeel", "Steel", "???", "215", "0", "0", "2", "0", "1", "0"],
	404: ["Kyogre", "Water", "???", "218", "0", "0", "0", "3", "0", "0"],
	405: ["Groudon", "Ground", "???", "218", "0", "3", "0", "0", "0", "0"],
	406: ["Rayquaza", "Dragon", "Flying", "220", "0", "2", "0", "1", "0", "0"],
	407: ["Latias", "Dragon", "Psychic", "211", "0", "0", "0", "0", "3", "0"],
	408: ["Latios", "Dragon", "Psychic", "211", "0", "0", "0", "3", "0", "0"],
	409: ["Jirachi", "Steel", "Psychic", "215", "3", "0", "0", "0", "0", "0"],
	410: ["Deoxys", "Psychic", "???", "215", "0", "1", "0", "1", "0", "1"],
	411: ["Chimecho", "Psychic", "???", "147", "0", "0", "0", "1", "1", "0"],
	413: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	414: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	415: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	416: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	417: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	418: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	419: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	420: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	421: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	422: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	423: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	424: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	425: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	426: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	427: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	428: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	429: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	430: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	431: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	432: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	433: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	434: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	435: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	436: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	437: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	438: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	439: ["Unown", "Psychic", "???", "61", "0", "1", "0", "1", "0", "0"],
	}
var idDict = {
	1:["Unknown"],
	2:["Ball"],
	3:["Berry"],
	4:["Disc"],
	5:["Item"],
	6:["Key"]
	}
var typeDict = {
	0:["All"],
	1:["Bug"],
	2:["Dark"],
	3:["Dragon"],
	4:["Electric"],
	5:["Fighting"],
	6:["Fire"],
	7:["Flying"],
	8:["Ghost"],
	9:["Grass"],
	10:["Ground"],
	11:["Ice"],
	12:["Normal"],
	13:["Poison"],
	14:["Psychic"],
	15:["Rock"],
	16:["Steel"],
	17:["Water"],
	}
var itemRes = {
	}
var pokeRes = {
	}
var idRes = {
	}
var typeRes = {
	}
var checkboxes = {
	}

func _ready():
	populate(itemDict,"res://Assets/icons/items/",itemRes,true)
	populate(pokeDict,"res://Assets/icons/pokemon/",pokeRes,false)
	populate(idDict,"res://Assets/icons/identifiers/",idRes,false)
	populate(typeDict,"res://Assets/icons/types/",typeRes,false)
	for i in pokeDict.keys():
		checkboxes[i] = false

func populate(dict:Dictionary, path:String, dir:Dictionary, item:bool):
	for i in dict.keys():
		dir[i] = load(path + str(i if item else dict[i][0]) + ".png")
