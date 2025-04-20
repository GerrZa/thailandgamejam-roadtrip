extends Node

var dialogs = {}
var dialog_box = preload("res://src/ui/simple_dialog/dialog_box.tscn")

var sequence = []

#NOTE
#Sequence guide
#types
#-"dialog": {type:"dialog", char, text, spr_frame, glob, target}
#-"dialogfunc": {type:"dialogfunc", func, args} #when sequence reach this, dialog manager execute self function
#-"manipulate" : {type:"manipulate", node, func, arg : Array}
#-"animation" : {type:"animation", animplayer, animname}

enum DialogFuncList {
	NONE,
	CLEAR,
	DEL,
	NEWDIALOG,
	NEWCHAR
}

signal sequence_finish

func set_sequence(seq):
	sequence = seq

func execute_sequence():
	for i in range(sequence.size()):
		var seq = sequence[i] as Dictionary
		
		if seq.has("type") == false:
			print("notype")
			return
		
		#print(seq["type"])
		
		match seq["type"]:
			"dialog":
				
				var dia_ins = new_dialog(seq["char"], seq["text"], seq["spr_frame"], seq["glob"], seq["target"])
				
				await dia_ins.dialog_finish
			"dialogfunc":
				if seq["func"] == "delete_char":
					delete_char(seq["arg"][0])
				else:
					if has_method(StringName(seq["func"])):
						call(StringName(seq["func"]))
			"manipulate":
				if seq.has("node") and seq["node"] != null:
					seq["node"].callv(StringName(seq["func"]), seq["arg"])
			"animation":
				if seq.has("animplayer"):
					seq["animplayer"].play(seq["animname"])
					
					await seq["animplayer"].animation_finished
	
	emit_signal("sequence_finish")

func new_dialog(char_name : String, text : String, char_spr : SpriteFrames = null, glob_pos := Vector2(0, 0), target_parent = null):
	if target_parent == null:
		print("no parent no dialog :(")
		return
	
	var exist = false
	for i in dialogs.keys():
		if i == char_name: #if char already exist
			exist = true
			if char_spr == null:
				dialogs[i].new_dialog(text)
			else:
				dialogs[i].new_dialog(text, char_spr)
			return dialogs[i]
			break
	
	if exist == false:
		var dialog_ins = dialog_box.instantiate()
		
		dialog_ins.global_position = glob_pos
		dialog_ins.init(char_name, text, char_spr)
		
		target_parent.add_child(dialog_ins)
		dialogs[char_name] = dialog_ins
		
		return dialog_ins

func delete_char(char : String):
	for i in dialogs.keys():
		if i == char: #if char exist
			var selected_dialog = dialogs[i]
			dialogs.erase(i)
			selected_dialog.delete()
			break

func clear_dialog():
	for i in dialogs.keys():
		dialogs[i].delete()
	
	dialogs.clear()

#func _physics_process(delta: float) -> void:
	#print(dialogs)
