extends KinematicBody2D

var movementspeed = 50
var friction = 0.98

var gravity = 5
var time_passed = 0
var velocity = Vector2()

func _physics_process(delta):

	if Input.is_action_pressed("ui_right"):
		velocity.x += movementspeed
	if Input.is_action_pressed("ui_left"):
		velocity.x -= movementspeed
	if Input.is_action_pressed("ui_down"):
		velocity.y += movementspeed
	if Input.is_action_pressed("ui_up"):
		velocity.y -= movementspeed
		
	velocity.x *= friction;
	#velocity.y *= friction;
	
	#velocity.x += speed * delta
	#velocity.y += speed * delta
	

	#time_passed += delta
	velocity.y += gravity

	move_and_slide(velocity)
