extends KinematicBody2D

var velocity = Vector2()
var amimovin = false

func getVelocity():
	return velocity



#create a start movin and stop movin function 
func _physics_process(delta):
	if not amimovin:
		velocity = move_and_slide(velocity)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
