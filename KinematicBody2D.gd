extends KinematicBody2D

var speed = 5000

var gravity = 800
var time_passed = 0
var velocity = Vector2()

func _physics_process(delta):
	velocity = Vector2()

	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1

	velocity = velocity.normalized() * speed * delta

	time_passed += delta
	velocity.y += gravity * time_passed * delta

	move_and_slide(velocity)
