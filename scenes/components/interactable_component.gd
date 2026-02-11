class_name InteractableComponent

extends Area2D

signal Interactable_activated
signal Interactable_deativated

func _ready() -> void:
	print("连接了")



func _on_body_entered(body: Node2D) -> void:
	Interactable_activated.emit()
	
	



func _on_body_exited(body: Node2D) -> void:
	Interactable_deativated.emit()
