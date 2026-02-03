extends StaticBody2D
@onready var animation_player: AnimatedSprite2D = $AnimationPlayer
@onready var interactable_component: InteractableComponent = $Interactable_Component
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D


func _ready() -> void:
	interactable_component.Interactable_activated.connect(on_Interactable_activated)
	interactable_component.Interactable_deativated.connect(on_Interactable_deativated)



func on_Interactable_activated()->void:
	animation_player.play("open_door")
	print("进来了")
	pass
func on_Interactable_deativated()->void:
	animation_player.play("close_door")
	print("出去了")
	pass
