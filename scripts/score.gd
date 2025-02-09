extends RichTextLabel


@export var computer_points = 0
@export var player_points = 0


func _ready() -> void:
	var parent = get_parent().get_node("Background") as Sprite2D
	
	var width = parent.texture.get_size().x * parent.scale.x
	var height = parent.texture.get_size().y * parent.scale.x
	
	var self_width = size.x * scale.x
	var self_height = size.y * scale.y
	
	position = Vector2((width - self_width) / 2, (height - self_height) / 2)
