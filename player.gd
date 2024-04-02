extends CharacterBody2D

const UP = Vector2(0,-1)
const FLAP = 200
const MAXFALLSPEED = 200
const GRAVITY = 10

var h = Vector2()

func _physics_process(delta):
	h.y += GRAVITY
	if h.y > MAXFALLSPEED:
		h.y = MAXFALLSPEED
	
	if Input.is_action_just_pressed("FLAP"):
		h.y = -FLAP
	motion = move_and_slide(velocity.y ,UP)
