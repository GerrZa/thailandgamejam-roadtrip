extends AudioStreamPlayer

@export var target_db = -13.0
@export var init_db = -80.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	volume_db = init_db

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	volume_db = lerp(volume_db, target_db, 0.05)

func set_target(target):
	target_db = target
