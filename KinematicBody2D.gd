extends KinematicBody2D

var gravity = 1.0
var speed = 2000
var velocity = Vector2()

func _physics_process(delta):
	velocity = Vector2()
	velocity.y += gravity
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1

	velocity = velocity.normalized() * speed * delta

	move_and_slide(velocity)
