extends Node

var inventory: Dictionary = Dictionary()

signal inventory_changed

func add_collectable(colectable_name: String) -> void:
	inventory.get_or_add(colectable_name)
	
	if inventory[colectable_name] == null:
		inventory[colectable_name] = 1
	else:
		inventory[colectable_name] += 1
		
	inventory_changed.emit()
