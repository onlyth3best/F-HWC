extends Area3D

@export var dialogue_resource: DialogueResource #dialog file
@export var dialogue_start: String = "start" #where to start from in the file itself !!

func action() -> void:
	#
	$"../../Player".set_physics_process(false)
	#
	
	DialogueManager.show_example_dialogue_balloon(dialogue_resource, dialogue_start)
	
	#
	var ended_resource: DialogueResource = await DialogueManager.dialogue_ended
	if ended_resource == dialogue_resource:
		$"../../Player".set_physics_process(true)
	#
