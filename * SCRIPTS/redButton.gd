extends Area3D
@onready var prompt_label : Label3D = $InteractText
@onready var animPlayerWD : AnimationPlayer = $"../../doorwalls/AnimationPlayer_WALLDOOR"
var IsOpen = false

#
#var bovril_slep = load("res://* FILES/Art/slep.png")
#


func interact():
	print("you pressed up this button!!")
	#$"../../../bovril".texture = bovril_slep
	
	#queue_free() TO DELETE
	if !IsOpen:
		animPlayerWD.play("dooropen")
		IsOpen = true
	else:
		animPlayerWD.play("doorclose")
		IsOpen = false
	$"../../doorwalls/DoorCreak".play()
	
func show_prompt():
	prompt_label.visible = true
	
func hide_prompt():
	prompt_label.visible = false
