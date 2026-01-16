extends Area2D


#func _on_body_entered(body: Node2D) -> void:
	#print("e")
	#if body.is_in_group("PlayerHitBox"):
		#print ("hit")
		#print (body)


func _on_area_entered(area: Area2D) -> void:
	print("entered")
	if area.is_in_group("PlayerHitBox"):
		print ("hit")
		print (area)
