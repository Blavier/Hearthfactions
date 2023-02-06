extends KinematicBody2D

var movementspeed = 35
var jumpvelocity = 450

var groundfriction = 0.90
var airfriction = 0.95

var gravity = 14
var time_passed = 0
var velocity = Vector2()

func _physics_process(delta):

	if Input.is_action_pressed("ui_right"):
		velocity.x += movementspeed
	if Input.is_action_pressed("ui_left"):
		velocity.x -= movementspeed
	if Input.is_action_pressed("ui_down"):
		velocity.y += movementspeed
	#if Input.is_action_pressed("ui_up"):
	#	velocity.y -= movementspeed
	
	if is_on_floor():
		velocity.x *= groundfriction;
	else:
		velocity.x *= airfriction;
	#velocity.y *= friction;
	
	#velocity.x += speed * delta
	#velocity.y += speed * delta
	

	#time_passed += delta
	
		
	
		
	velocity.y += gravity
	
	#var space_state = get_world_2d().direct_space_state
	#var result = space_state.intersect_ray(Vector2(position.x, position.y), Vector2(position.x, position.y + 31))
	
	if is_on_floor():
		velocity.y = 0;
		
	if is_on_wall():
		velocity.x = 0;
		
	if Input.is_action_just_pressed("ui_up"):
		if is_on_floor():
			velocity.y = -jumpvelocity

	move_and_slide(velocity, Vector2.UP)
