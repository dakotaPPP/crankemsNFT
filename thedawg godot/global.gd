extends Node
class_name GlobalClass


static func buttonPress(btn,kinebody):
	var speed = 200
	var velocity = kinebody.getVelocity()
	velocity.y += 10
	velocity = velocity * speed
	velocity = kinebody.move_and_slide(velocity)
	kinebody.startMovin()
	#add while statement here
	kinebody.stopMovin()



