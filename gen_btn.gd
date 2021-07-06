extends Button

var id : int
var data : Array

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("filter",true)
	connect("toggled", self, "_on_toggled")


func init(id_in, datapath, texture_path):
	id = id_in
	data = datapath
	$icon.texture = texture_path
	$Label.text = data[0]


func _on_toggled(button_pressed):
	Data.checkboxes[id] = !Data.checkboxes[id]
	get_tree().call_group("glitzer","gen_click")


func shide(type):
	if data.has(type[0][0]):
		show()
	elif type[0][0] == "All":
		show()
	else:
		hide()

