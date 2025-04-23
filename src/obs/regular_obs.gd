extends Area2D


func _physics_process(delta: float) -> void:
	if position.y >= -100:
		visible = true
	else:
		visible = false
