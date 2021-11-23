extends Spatial


onready var camera = $Camera
onready var mesh = $Monkey


func _ready():
	
	var res_bool = Armour.INIT({
		"layer": 10,
		"camera": camera,
#		"outline_width": 5,
#		"outline_color": Color(1.0, 0.0, 0.0, 0.3),
	})
	print(res_bool)


func _input(event):
	
	if Input.is_action_pressed("ui_up"):
		# or Armour.SET(mesh)
		var res_bool = Armour.SET(mesh, true)
		print(res_bool)
	if Input.is_action_pressed("ui_down"):
		var res_bool = Armour.SET(mesh, false)
		print(res_bool)
