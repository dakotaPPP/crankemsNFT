extends Node2D




func _on_button_button_down():
	get_node("option1/AnimationPlayer").set_current_animation("buttonDown")


func _on_button_button_up():
	get_node("option1/AnimationPlayer").set_current_animation("buttonUp")


func _on_button2_button_down():
	get_node("option2/AnimationPlayer").set_current_animation("buttonDown")
	



func _on_button2_button_up():
	get_node("option2/AnimationPlayer").set_current_animation("buttonUp")


func _on_button3_button_down():
	get_node("option3/AnimationPlayer").set_current_animation("buttonDown")


func _on_button3_button_up():
	get_node("option3/AnimationPlayer").set_current_animation("buttonUp")


func _on_button4_button_down():
	get_node("option4/AnimationPlayer").set_current_animation("buttonDown")


func _on_button4_button_up():
	get_node("option4/AnimationPlayer").set_current_animation("buttonUp")


func _on_button5_button_down():
	get_node("option5/AnimationPlayer").set_current_animation("buttonDown")


func _on_button5_button_up():
	get_node("option5/AnimationPlayer").set_current_animation("buttonUp")
