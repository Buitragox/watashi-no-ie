extends CharacterBody2D


const SPEED = 65.0
var last_direction := "down"
@onready var animated_sprite := $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	var input := Vector2.ZERO
	var x := Input.get_axis("left", "right")
	var y := Input.get_axis("up", "down")
	
	if x:
		input.x = x
	elif y:
		input.y = y
	
	velocity = input * SPEED
	move_and_slide()
	update_animation(input)


func update_animation(input: Vector2) -> void:
	if input == Vector2.ZERO:
		animated_sprite.play("idle-" + last_direction)
		return
	
	if input.x > 0:
		last_direction = "side"
		animated_sprite.play("walk-side")
		animated_sprite.flip_h = false
	elif input.x < 0:
		last_direction = "side"
		animated_sprite.play("walk-side")
		animated_sprite.flip_h = true
	elif input.y > 0:
		last_direction = "down"
		animated_sprite.play("walk-down")
	elif input.y < 0:
		last_direction = "up"
		animated_sprite.play("walk-up")
	
	
