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
extends Node2D
var r1=0.4
var r2=0.7
var compt=0
var ncompt=60
var lettre_scene=[
	preload("res://scene/lettre/comma.tscn"),
	preload("res://scene/lettre/j.tscn"),
	preload("res://scene/lettre/F.tscn"),
	preload("res://scene/lettre/X.tscn"),
	preload("res://scene/lettre/K.tscn"),
	preload("res://scene/lettre/apro1.tscn"),
	preload("res://scene/lettre/D.tscn"),
	preload("res://scene/lettre/Z.tscn"),
	preload("res://scene/lettre/slash.tscn")
	]

func _ready():
	spawn()
	pass

func spawn():
	while true:
		
		var lettre_intance= utils.choose(lettre_scene).instance()
		var posi =Vector2()
		posi.y= rand_range(0+50,utils.view_size.y-150)
		posi.x= 0+1090
		lettre_intance.set_position(posi)
		if compt<ncompt:
			add_child(lettre_intance)
			compt+=1
		yield(utils.create_timer(rand_range(r1,r2)),"timeout")

