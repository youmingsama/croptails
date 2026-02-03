class_name InteractableComponent

extends Area2D

signal Interactable_activated
signal Interactable_deativated



func _on_area_entered(area: Area2D) -> void:
	Interactable_activated.emit()
	print("进来了")


func _on_area_exited(area: Area2D) -> void:
	Interactable_deativated.emit()
