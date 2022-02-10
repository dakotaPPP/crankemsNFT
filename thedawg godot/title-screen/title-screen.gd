extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$menuBtns/playBtn.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_playBtn_pressed():
	get_tree().change_scene("res://play-screen/playScene.tscn") 


func _on_optionBtns_pressed():
	var options = load("res://menus/options.tscn").instance()
	get_tree().current_scene.add_child(options)


func _on_exitBtn_pressed():
	get_tree().quit() # Replace with function body.