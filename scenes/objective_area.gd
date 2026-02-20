extends Area2D

func _on_ObjectiveArea_body_entered(body: StaticBody2D):
	print("Reached objective!")
	if (body.name == "Ship"):
		print("Reached objective!")
