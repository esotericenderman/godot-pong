extends RichTextLabel


func _ready() -> void:
	var parent = get_parent().get_node("Background") as Sprite2D
	
	var width = parent.texture.get_size().x * parent.scale.x
	var height = parent.texture.get_size().y * parent.scale.x
	
	print("Background width: " + str(width))
	print("Background height: " + str(height))
	
	var self_width = self.size.x * self.scale.x
	var self_height = self.size.y * self.scale.y
	
	print("Width of self: " + str(self_width))
	print("Height of self: " + str(self_height))
	
	self.position = Vector2((width - self_width) / 2, (height - self_height) / 2)


func _process(delta: float) -> void:
	pass
