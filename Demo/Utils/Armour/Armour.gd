extends Node


var Outline = preload("./Viewports/Outline.tscn").instance()


const config = {
	"layer": null,
	"camera": null,
	"outline_width": null,
	"outline_color": null,
}


func _init():
	if _get_version_opengl() == "GLES3":
		print("[Armour]: ready.")
	else:
		print("[Armour]: Error.")
		print("[Armour]: Please switch the version to GLES3, otherwise Armour does not work.")


# ======================== API(begin) ========================

func INIT(params):
	
	if (_get_version_opengl() == "GLES3") and params.has("layer") and params.has("camera"):
		if self.has_node("Outline"):
			self.get_node("Outline").queue_free()
		
		config.layer = params.layer
		config.camera = params.camera
		config.outline_width = params.outline_width if params.has("outline_width") else 3
		config.outline_color = params.outline_color if params.has("outline_color") else Color(0.0, 0.0, 0.0, 1.0)
		
		self.add_child(Outline)
		Outline.set_viewport(params.layer, config.outline_width, config.outline_color)
		Outline.camera = params.camera
		return true
	
	return false


func SET(mesh, enabled=true):
	if (config.layer == null) or (config.camera == null):
		return {
			"success": false,
			"visible": null
		}
	else:
		var res_bool = mesh.set_layer_mask_bit(config.layer - 1, enabled)
		return {
			"success": true,
			"visible": enabled
		}

# ======================== API(end) ========================


func _get_version_opengl():
	var version_opengl = OS.get_current_video_driver()
	var dist_opengl = {
		1: "GLES2",
		0: "GLES3",
	}
	return dist_opengl[version_opengl]
