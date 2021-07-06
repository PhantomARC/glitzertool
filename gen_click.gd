extends Button

var id : int
var data : Array


func _ready():
	add_to_group("clicker",true)
	connect("pressed", self, "_on_pressed")


func init(id_in, datapath, texture_path):
	id = id_in
	data = datapath
	$icon.texture = texture_path

func _on_pressed():
	var temp = []
	temp.append(data[4])
	temp.append(data[5])
	temp.append(data[6])
	temp.append(data[9])
	get_tree().call_group("glitzer","update_inc",[temp])
