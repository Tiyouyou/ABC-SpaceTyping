# This file is part of ABC Space Typing .

#ABC Space Typing is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# ABC Space Typing is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with ABC Space Typing.  If not, see <https://www.gnu.org/licenses/>. 2

#Autor: Michel Pierre
extends Area2D
var speed = 150.0

var explosion_scene=preload("res://scene/explosion.tscn")
func _ready():

	pass # Replace with function body.

func _process(delta):
	rotation =rotation + deg2rad(-90 * delta)
	position.x -= speed * delta
	if position.x <-100:
		queue_free()
	
func _on_lettre_area_entered(area):
	if area.is_in_group("lazer"):
		var exposion_instance=explosion_scene.instance()
		exposion_instance.position=position
		get_parent().add_child(exposion_instance)
		
		queue_free()
		area.queue_free()
		
		
	if area.is_in_group("player"):
		var exposion_instance=explosion_scene.instance()
		exposion_instance.position=position
		
		get_parent().add_child(exposion_instance)
		queue_free()
	
	
	pass # Replace with function body.
