extends Node2D

var moving_scale = 2.5
var moving_speed = 0.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	
	if get_node_or_null("Car"):
		moving_speed = $Car.main_speed
	else:
		moving_scale = lerp(moving_scale, 0.0, 0.03)
	
	$bg.autoscroll = Vector2(0, moving_speed * moving_scale)
	
	for o in get_tree().get_nodes_in_group("move_along"):
		o.position.y += moving_speed * delta * moving_scale
	
	
