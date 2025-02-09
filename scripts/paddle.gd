extends StaticBody2D


var collider: CollisionShape2D
var sprite: Sprite2D

var starting_x: float
var collider_starting_x: float
var sprite_staring_x: float


func _ready() -> void:
	collider = get_node("Collision") as CollisionShape2D
	sprite = get_node("Sprite") as Sprite2D

	starting_x = position.x
	collider_starting_x = collider.position.x
	sprite_staring_x = sprite.position.x

func _process(delta: float) -> void:
	position.x = starting_x
	collider.position.x = collider_starting_x
	sprite.position.x = sprite_staring_x

	var is_computer = get_meta("computer")
	
	if (is_computer):
		computer_move(delta)
		return

	var direction: Vector2

	if Input.is_action_pressed("ui_up"):
		direction = Vector2.UP
	elif Input.is_action_pressed("ui_down"):
		direction = Vector2.DOWN
	else:
		return
	
	self.position += direction * 400 * delta

func computer_move(delta: float):
	var ball = get_parent().get_node("Ball") as RigidBody2D
	
	var target_y = ball.position.y
	var current_y = position.y
	
	var direction: Vector2
	if (target_y > current_y):
		direction = Vector2(0, 1)
	elif (target_y < current_y):
		direction = Vector2(0, -1)
	else:
		return
		
	self.position += direction * 400 * delta
