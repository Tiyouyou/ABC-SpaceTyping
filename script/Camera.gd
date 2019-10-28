#camera script
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
extends Camera2D
var magnitude = 0
var timeleft = 0
var is_shaking= false


func _ready():

	pass

func shake(new_magnitude,lifetime):
	if magnitude>new_magnitude:return
	magnitude= new_magnitude
	timeleft= lifetime
	
	if is_shaking: return
	is_shaking = true
	
	while timeleft>0:
		var posit = Vector2()
		posit.x = rand_range(-magnitude,magnitude)
		posit.y = rand_range(-magnitude,magnitude)
		set_position(posit)
		
		timeleft -= get_process_delta_time()
		yield(get_tree(),"idle_frame")
	
	magnitude=0
	is_shaking = false
	set_position(Vector2(0,0))
	pass  