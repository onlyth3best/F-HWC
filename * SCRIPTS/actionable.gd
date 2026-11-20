extends Area3D

const Balloon = preload("res://* DIALOGUE/balloon.tscn")

@export var dialogue_resource: DialogueResource #dialog file
@export var dialogue_start: String = "start" #where to start from in the file itself !!

func action() -> void:
	# ------- physics ------- #
	$"../../Player".set_physics_process(false)
	# ------- physics end ------- #
	
	var balloon: Node = Balloon.instantiate()
	get_tree().current_scene.add_child(balloon)
	balloon.start(dialogue_resource, dialogue_start)
	
	# ------- physics ------- #
	var ended_resource: DialogueResource = await DialogueManager.dialogue_ended
	if ended_resource == dialogue_resource:
		$"../../Player".set_physics_process(true)
	# ------- physics end ------- #
