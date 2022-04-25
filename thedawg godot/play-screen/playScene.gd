extends Node2D
var mouseOver = false

func _on_TextureButton_button_down():
	get_node("button1/AnimationPlayer").set_current_animation("buttonDown")


func _on_TextureButton_button_up():
	get_node("button1/AnimationPlayer").set_current_animation("buttonUp")
	if mouseOver:
		get_tree().change_scene("res://pack-screen/packScene.tscn") 
	


func _on_TextureButton_mouse_exited():
	mouseOver = false
	print("goodbye mom")
	

func _on_TextureButton_mouse_entered():
	mouseOver = true
	print("hello mom")


func _on_pvp_button_down():
	get_node("pvp/AnimationPlayer").set_current_animation("buttonDown")


func _on_pvp_button_up():
	get_node("pvp/AnimationPlayer").set_current_animation("buttonUp")
