extends Node2D

func _on_TextureButton_button_down():
	get_node("button1/AnimationPlayer").set_current_animation("buttonDown")


func _on_TextureButton_button_up():
	get_node("button1/AnimationPlayer").set_current_animation("buttonUp")
	get_tree().change_scene("res://pack-screen/packScene.tscn") 
