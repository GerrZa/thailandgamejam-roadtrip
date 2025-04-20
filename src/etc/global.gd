extends Node

var current_scene = preload("res://src/level/level1/level1.tscn")

func change_scene(to_scene):
	current_scene = to_scene
	get_tree().change_scene_to_packed(to_scene)
