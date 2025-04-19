extends Camera2D

var to_pos = Vector2.ZERO
const DEF_INTENSITY = 6.0
var intensity = 0.0


var shaking = true

var to_zoom 



func _physics_process(delta: float) -> void:
	position += (offset - to_pos) * 0.1
	
	if Input.is_action_just_pressed("ui_accept"):
		shake() 
	
	if shaking:
		randomize()
		offset = Vector2.from_angle(randf_range(0.0, PI * 2)) * intensity
		
		intensity = lerp(intensity, 0.0, 0.1)
	else:
		offset = Vector2.ZERO
	
	zoom = lerp(zoom,Vector2(1,1), 0.1)

func set_to_pos(to_position : Vector2):
	to_pos = to_position

func shake():
	intensity = DEF_INTENSITY
	
	shaking = true
	await get_tree().create_timer(0.5).timeout
	shaking = false

func zoomin(target_value):
	zoom = Vector2(target_value, target_value)
