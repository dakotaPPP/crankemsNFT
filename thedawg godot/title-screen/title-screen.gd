extends Control

var rng = RandomNumberGenerator.new()

class bgs:
	var name
	var width
	var height
	func _init(n, w, h):
		name=n
		width=w
		height=h
	func name():
		return name
	func width():
		return width
	func height():
		return height
		
var fiveGtower = bgs.new("5gtower",500,692)
var pandaGirl = bgs.new("pandaGirl",623,369)
var pizzaCity = bgs.new("pizzacity",480,270)
var buddah = bgs.new("buddah",500,700)

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


func _on_background_ready():
	var viewportWidth = get_viewport().size.x
	var viewportHeight = get_viewport().size.y
	var backgrounds = [fiveGtower,pandaGirl,pizzaCity,buddah]
	rng.randomize()
	var item = backgrounds[rng.randi_range(0,backgrounds.size()-1)]
	print(item.name())
	get_node("background").scale.x = viewportWidth/item.width()
	get_node("background").scale.y = viewportHeight/item.height()
	get_node("background").animation = item.name()
	

func _on_logo_ready():
	var logos = ["cranklogo","goldlogo","chowderLogo"]
	rng.randomize()
	var item = logos[rng.randi_range(0,logos.size()-1)]
	get_node("logo").texture = load("res://title-screen/"+item+".png")
