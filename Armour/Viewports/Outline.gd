extends ViewportContainer


onready var viewport_camera = $Viewport/Camera
onready var viewport = $Viewport
onready var camera


func _ready():
	set_viewport_size()


func _process(delta):
	if camera != null:
		update_viewport_camera(camera)


func set_viewport_size():
	viewport.set_size(get_viewport().size)


func set_viewport(layer, width, color):
	var material = self.material
	viewport_camera.set_cull_mask(pow(2, layer) / 2)
	material.set_shader_param("width", width)
	material.set_shader_param("color", color)


func update_viewport_camera(camera):
	viewport_camera.transform = camera.transform
