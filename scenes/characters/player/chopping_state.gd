extends  NodeState

@export var player:Player
@export var animated_sprite_2d:AnimatedSprite2D
@export var hit_component_collsion_shape:CollisionShape2D

func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	if !animated_sprite_2d.is_playing():
		transition.emit("idle")
	pass

func _ready() -> void:
	hit_component_collsion_shape.disabled=true
	hit_component_collsion_shape.position=Vector2(0,0)

func _on_next_transitions() -> void:
	pass


func _on_enter() -> void:
	if Global.player_direction==Vector2.UP:
		animated_sprite_2d.play("chopping_back")
	elif Global.player_direction==Vector2.RIGHT:
		animated_sprite_2d.play("chopping_right")
	elif Global.player_direction==Vector2.DOWN:
		animated_sprite_2d.play("chopping_front")
	elif Global.player_direction==Vector2.LEFT:
		animated_sprite_2d.play("chopping_left")
	else:
		animated_sprite_2d.play("chopping_front")
	pass
	hit_component_collsion_shape.disabled=false

func _on_exit() -> void:
	animated_sprite_2d.stop()
	hit_component_collsion_shape.disabled=true                                                                                                                                                                                                                                 
	pass
