extends Node
class_name GlobalClass


static func buttonDown(aniPlr):
	aniPlr.set_current_animation("buttonDown")
	
static func buttonUp(aniPlr):
	aniPlr.queue("buttonUp")



