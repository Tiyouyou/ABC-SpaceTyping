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
#new game instruction  Script
extends Node2D
var n=0
signal startgame
func _ready():
	n=0#variable to change node on the scene
	pass # Replace with function body.

func _process(delta):
	#controle caractere on text_line to active start button
	if $TextEdit.text.length()>4:
		$load_theme/Start.disabled=false
	else:
		$load_theme/Start.disabled=true
	


func _on_Start_pressed():
	$load_theme/Start.hide()
	$TextEdit.hide()
	$load_theme/next.show()
	$int1.show()
	pass # start button action to make instruction and save player name


func _on_next_pressed():
	$load_theme/prev.show()
	if n==0:
		$int1.hide()
		$int2.show()
	else:
		$int2.hide()
	if n==1:
		$int3.show()
	else:
		$int3.hide()
	if n==2:
		emit_signal("startgame")
		self.hide()
	if n<0:
		$int1.show()
	n+=1
	pass #change to next instruction node


func _on_prev_pressed():
	n-=1
	if n==0:
		$int1.hide()
		$int2.show()
	else:
		$int2.hide()
	if n==1:
		$int3.show()
	else:
		$int3.hide()

	if n<0:
		$int1.show()
		n=0
	
	pass  #change to prev instruction node







func _on_Menu_focus_entered():
	get_tree().change_scene("res://scene/menu.tscn")
	pass # go back to the menu
