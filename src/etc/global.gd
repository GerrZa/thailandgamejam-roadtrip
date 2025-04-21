extends Node

var current_scene = preload("res://src/level/level1/level1.tscn")

var time_scale = 1.0


func change_scene(to_scene):
	current_scene = to_scene
	get_tree().change_scene_to_packed(to_scene)
