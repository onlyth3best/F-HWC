extends Area3D

@export var dialogue_resource: DialogueResource #dialog file
@export var dialogue_start: String = "start" #where to start from in the file itself !!

func action() -> void:
	DialogueManager.show_example_dialogue_balloon(dialogue_resource, dialogue_start)
	$"../../Player".set_physics_process(false)
