extends Node2D

var moving_scale = 2.5
var moving_speed = 0.0

@export var moving = false
var test_seq = [
		{
			"type":"animation",
			"animplayer":$AnimationPlayer,
			"animname":"start"
		},
		{
			"type":"dialog",
			"char":"Boris",
			"text":"YOOOO dialog system!!!",
			"spr_frame":load("res://src/ui/simple_dialog/dialog_spriteframe/ptt_dialog_char.tres"),
			"glob":Vector2(80,80),
			"target":$main_ui
		},
		{
			"type":"dialog",
			"char":"Dude",
			"text":"STFU",
			"spr_frame":load("res://src/ui/simple_dialog/dialog_spriteframe/ptt_dialog_char.tres"),
			"glob":Vector2(180,120),
			"target":$main_ui
		},
		{
			"type":"dialogfunc",
			"func":"delete_char",
			"arg":["Dude"]
		},
		{
			"type":"dialog",
			"char":"Boris",
			"text":"Fuck you",
			"spr_frame":load("res://src/ui/simple_dialog/dialog_spriteframe/ptt_dialog_char.tres"),
			"glob":Vector2(80,80),
			"target":$main_ui
		},
		{
			"type":"dialogfunc",
			"func":"clear_dialog"
		},
		{
			"type":"manipulate",
			"node":self,
			"func":"set_ready",
			"arg":[]
		}
	]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#ungroupping all moving object
	for i in $move_along.get_children():
		i.add_to_group("move_along")
		i.reparent(self)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	
	if get_node_or_null("Car"):
		moving_speed = $Car.main_speed
	else:
		moving_scale = lerp(moving_scale, 0.0, 0.03)
	
	$bg.autoscroll = Vector2(0, moving_speed * moving_scale)
	
	if moving:
		for o in get_tree().get_nodes_in_group("move_along"):
			o.position.y += moving_speed * delta * moving_scale
	
	if moving_scale < 0.01 and get_node_or_null("Car") == null:
		get_tree().change_scene_to_file("res://src/level/dead_scene/dead_scene.tscn")

func set_ready():
	moving = true
	$Car.enable_control = true
	$Car.enable_camera()
