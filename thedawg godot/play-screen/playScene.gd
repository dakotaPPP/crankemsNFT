extends Node2D


func _on_TextureButton_button_down():
	GlobalClass.buttonPress(get_node("TextureButton"))
	
