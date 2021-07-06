extends Control

onready var menus = {
	"items" : $"UICanvas/VBox/Hmenu/VMenu/Hbox/Items",
	"identifiers" : $"UICanvas/VBox/Hmenu/VMenu/Hbox/Identifier",
	"pokemon" : $"UICanvas/VBox/Hmenu/VMenu/Hbox2/PokeDrop",
	"types" : $"UICanvas/VBox/Hmenu/VMenu/Hbox2/TypeDrop",
	"buttons" : $"UICanvas/VBox/Panel/Hbox/P/H/VBSelect/panel/scroll/grid",
	"btypes" : $"UICanvas/VBox/Panel/Hbox/P/H/VBSelect/btypeMenu",
	}
onready var itemhex = $"UICanvas/VBox/Hmenu/VMenu/Hbox/Hex"
onready var pokehex = $"UICanvas/VBox/Hmenu/VMenu/Hbox2/Hex"
onready var icon = $"UICanvas/VBox/Hmenu/Panel/imgPokemon"
onready var icon2 = $"UICanvas/VBox/Hmenu/Panel/imgItem"
onready var popup = menus["items"].get_popup()
onready var pokepopup = menus["pokemon"].get_popup()
onready var evctrs = [
	$"UICanvas/VBox/Panel/Hbox/P/H/V/G/num_hp",
	$"UICanvas/VBox/Panel/Hbox/P/H/V/G/num_atk",
	$"UICanvas/VBox/Panel/Hbox/P/H/V/G/num_def",
	$"UICanvas/VBox/Panel/Hbox/P/H/V/G/num_spe",
	]
onready var hexctrs = [
	$"UICanvas/VBox/Panel/Hbox/Vbox/Grid/mon2", #hp
	$"UICanvas/VBox/Panel/Hbox/Vbox/Grid/mon1", #atk
	$"UICanvas/VBox/Panel/Hbox/Vbox/Grid/item1", #def
	$"UICanvas/VBox/Panel/Hbox/Vbox/Grid/item2", #spe
	$"UICanvas/VBox/Panel/Hbox/Vbox/Grid/unu1", #spa
	$"UICanvas/VBox/Panel/Hbox/Vbox/Grid/unu2", #spd
	]
onready var btns = [
	$"UICanvas/VBox/Panel/Hbox/P/H/V/G/lb_hp",
	$"UICanvas/VBox/Panel/Hbox/P/H/V/G/rb_hp",
	$"UICanvas/VBox/Panel/Hbox/P/H/V/G/lb_atk",
	$"UICanvas/VBox/Panel/Hbox/P/H/V/G/rb_atk",
	$"UICanvas/VBox/Panel/Hbox/P/H/V/G/lb_def",
	$"UICanvas/VBox/Panel/Hbox/P/H/V/G/rb_def",
	$"UICanvas/VBox/Panel/Hbox/P/H/V/G/lb_spe",
	$"UICanvas/VBox/Panel/Hbox/P/H/V/G/rb_spe",
	]
onready var pkrs_button = $"UICanvas/VBox/Panel/Hbox/P/H/V/p2/items/pkrs"
onready var brace_button = $"UICanvas/VBox/Panel/Hbox/P/H/V/p2/items/brace"
onready var the_button = preload("res://gen_btn.tscn").instance()
onready var clicker = $"UICanvas/VBox/Panel/Hbox/P/H/V/Panel/scroll/quickSelect"

var toggle_pkrs = 1
var toggle_brace = 1


func _ready():
	connect_signals()
	setup_properties()
	populate(menus["identifiers"],Data.idRes,Data.idDict,"identifier")
	populate(menus["items"],Data.itemRes,Data.itemDict,"item")
	populate(menus["pokemon"],Data.pokeRes,Data.pokeDict,"pokemon")
	populate(menus["types"],Data.typeRes,Data.typeDict,"type")
	special_populate(menus["buttons"],Data.pokeRes,Data.pokeDict)
	populate(menus["btypes"],Data.typeRes,Data.typeDict,"btype")
	check()
	icon.texture = Data.pokeRes[menus["pokemon"].get_item_id(0)]
	icon2.texture = Data.itemRes[menus["items"].get_item_id(0)]
	scanchecklist()


func check():
	for i in evctrs.size():
		if evctrs[i].text == hexctrs[i].text:
			evctrs[i].add_color_override("font_color_uneditable", Color(0,1,0))
		elif evctrs[i].text > hexctrs[i].text:
			evctrs[i].add_color_override("font_color_uneditable", Color(1,0,0))
		else:
			evctrs[i].add_color_override("font_color_uneditable", Color(1,1,1))
	for i in hexctrs.size():
		if hexctrs[i].text == "000":
			hexctrs[i].add_color_override("font_color_uneditable", Color(0.5,0.5,0.5))
		else:
			hexctrs[i].add_color_override("font_color_uneditable", Color(1,1,1))


func connect_signals() -> void:
	add_to_group("glitzer")
	popup.connect("gui_input", self, "_on_popup_gui_input")
	pokepopup.connect("gui_input", self, "_on_pokepopup_gui_input")
	menus["items"].connect("item_selected", self, "_on_menu_selected")
	menus["identifiers"].connect("item_selected", self, "_on_idmenu_selected")
	menus["pokemon"].connect("item_selected", self, "_on_pokemenu_selected")
	menus["types"].connect("item_selected", self, "_on_typemenu_selected")
	menus["btypes"].connect("item_selected", self, "_on_btypemenu_selected")
	pkrs_button.connect("toggled", self, "_on_pkrs_toggled")
	brace_button.connect("toggled", self, "_on_brace_toggled")
	for i in btns.size():
		btns[i].connect("pressed", self, "_some_button_pressed", [btns[i].name, round(i/2)])


func setup_properties() -> void:
	popup.set_hide_on_item_selection(false)
	popup.set_hide_on_checkable_item_selection(false)
	pokepopup.set_hide_on_item_selection(false)
	pokepopup.set_hide_on_checkable_item_selection(false)


func populate(source,dict,subdict,type:String):
	for i in dict.keys():
		add(source,dict[i],"" if (type == "type" or type == "btype") else subdict[i][0],i)


func special_populate(source,texture_path,dict):
	for i in dict.keys():
		the_button = load("res://gen_btn.tscn").instance()
		the_button.name = str(i)
		the_button.init(i,dict[i],texture_path[i])
		source.add_child(the_button)


func popitems(params):
	for i in Data.itemRes.keys():
		if Data.itemDict[i].has(Data.idDict[params + 1][0]):
			add(menus["items"],Data.itemRes[i],Data.itemDict[i][0],i)


func cat(input:String, length:int) -> String:
	var temp_in = input
	var temp_len:int = temp_in.length()
	while temp_len < length:
		temp_in = "0" + temp_in
		temp_len = temp_in.length()
	return temp_in


func add(source,item,label,id):
	source.add_icon_item(item,label,id)


func _on_idmenu_selected(index):
	itemscan(index)


func itemscan(type:int):
	menus["items"].clear()
	if type == 0:
		populate(menus["items"],Data.itemRes,Data.itemDict,"")
	else:
		popitems(type)


func _on_popup_gui_input(event):
	if event is InputEventScreenDrag:
		var dragEvent = event.relative.y
		popup.rect_position.y += dragEvent;
		popup.set_hide_on_item_selection(false)
		popup.set_hide_on_checkable_item_selection(false)


func _on_pokepopup_gui_input(event):
	if event is InputEventScreenDrag:
		var dragEvent = event.relative.y
		pokepopup.rect_position.y += dragEvent;
		pokepopup.set_hide_on_item_selection(false)
		pokepopup.set_hide_on_checkable_item_selection(false)


func _on_menu_selected(index):
	icon2.texture = Data.itemRes[menus["items"].get_item_id(index)]
	itemhex.text = cat("%x" % menus["items"].get_item_id(index), 4)
	var temp = "0x" + itemhex.text.substr(0,2)
	hexctrs[2].text = cat(str(temp.hex_to_int()), 3)
	temp = "0x" + itemhex.text.substr(2,2)
	hexctrs[3].text = cat(str(temp.hex_to_int()), 3)
	check()

func _on_pokemenu_selected(index):
	icon.texture = Data.pokeRes[menus["pokemon"].get_item_id(index)]
	pokehex.text = cat("%x" % menus["pokemon"].get_item_id(index), 4)
	var temp = "0x" + pokehex.text.substr(0,2)
	hexctrs[1].text = cat(str(temp.hex_to_int()), 3)
	temp = "0x" + pokehex.text.substr(2,2)
	hexctrs[0].text = cat(str(temp.hex_to_int()), 3)
	check()


func _on_typemenu_selected(index):
	pokescan(index)


func _on_btypemenu_selected(index):
	get_tree().call_group("filter","shide",[Data.typeDict[index]])


func pokescan(type:int):
	menus["pokemon"].clear()
	if type == 0:
		populate(menus["pokemon"],Data.pokeRes,Data.pokeDict,"")
	else:
		poppokes(type)


func poppokes(params):
	for i in Data.pokeRes.keys():
		if Data.pokeDict[i].has(Data.typeDict[params][0]):
			add(menus["pokemon"],Data.pokeRes[i],Data.pokeDict[i][0],i)


func _some_button_pressed(name, id):
	if name.substr(0,2) == "lb":
		math_inc(id, -1 * toggle_brace * toggle_pkrs)
	else:
		math_inc(id, 1 * toggle_brace * toggle_pkrs)
	check()


func math_inc(id, amount):
	if int(evctrs[id].text) + amount < 256 and int(evctrs[id].text) + amount > -1:
		evctrs[id].text= cat(str(int(evctrs[id].text) + amount),3)
	elif int(evctrs[id].text) + amount >= 256:
		evctrs[id].text= "255"
	elif int(evctrs[id].text) + amount <= -1:
		evctrs[id].text= "000"


func scanchecklist():
	for i in pokepopup.get_item_count():
		pokepopup.set_item_checked(i,true)
		if Data.checkboxes[pokepopup.get_item_id(i)]:
			pokepopup.set_item_checked(i,true)


func _on_brace_toggled(button_pressed):
	toggle_brace = 2 if button_pressed else 1


func _on_pkrs_toggled(button_pressed):
	toggle_pkrs = 2 if button_pressed else 1


func update_inc(data:Array):
	for i in data[0].size():
		math_inc(i,int(data[0][i])*toggle_pkrs*toggle_brace)
	check()


func gen_click():
	var temp
	for n in clicker.get_children():
		clicker.remove_child(n)
		n.queue_free()
	for i in Data.checkboxes.keys():
		if Data.checkboxes[i]:
			temp = load("res://gen_click.tscn").instance()
			temp.init(i,Data.pokeDict[i],Data.pokeRes[i])
			clicker.add_child(temp)
