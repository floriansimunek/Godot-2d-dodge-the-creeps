extends RigidBody2D

@export var minSpeed = 150.0
@export var maxSpeed = 250.0

func _ready():
	$AnimatedSprite2D.play()
	var mobTypes = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.animation = mobTypes[randi() % mobTypes.size()]


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
