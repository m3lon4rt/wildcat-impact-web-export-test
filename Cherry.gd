extends CharacterBody2D

const SPEED = 500.0

var direction_facing = 1

@onready var animator = $AnimationPlayer

func _ready():
	self.y_sort_enabled = true

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down").normalized()
	if direction:
		velocity = direction * SPEED
	else:
		velocity = Vector2.ZERO
	
	if direction:
		animator.play("Run")
	else:
		animator.play("Idle")
	
	if Input.is_action_pressed("ui_right"):
		if direction_facing == 1:
			scale.x = 1
			get_node("Sprite2D").skew = -45
		else:
			scale.x = -1
			direction_facing = 1
			get_node("Sprite2D").skew = 45
		get_node("CPUParticles2D").emitting = true
	elif Input.is_action_pressed("ui_left"):
		if direction_facing == 0:
			scale.x = 1
			get_node("Sprite2D").skew = 45
		else:
			scale.x = -1
			direction_facing = 0
			get_node("Sprite2D").skew = -45
		get_node("CPUParticles2D").emitting = true
	elif Input.is_action_pressed("ui_up"):
		get_node("CPUParticles2D").emitting = true
	elif Input.is_action_pressed("ui_down"):
		get_node("CPUParticles2D").emitting = true
	else:
		get_node("CPUParticles2D").emitting = false
	
	
	move_and_slide()
