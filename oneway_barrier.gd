extends Spatial


onready var _barrier: StaticBody = $Barrier


func _on_pass_detection_area_body_entered(body: PhysicsBody) -> void:
	_barrier.add_collision_exception_with(body)


func _on_pass_detection_area_body_exited(body: PhysicsBody) -> void:
	_barrier.remove_collision_exception_with(body)
