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
var level=0
var time=0.0
var time_to_end=48.0
var n=0
signal end
var l
var l_instance
func _ready():
	level=0
	$level.text="Level 1"
func _process(delta):
	if level==0 and n<1:
		$new_game_instruction.show()
		n+=1
	if level==1 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1	
	elif level==2 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels2.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==3 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels3.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==4 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels4.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==5 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels5.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==6 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels6.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==7 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels7.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==8 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels8.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==9 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels9.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==10 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels10.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==11 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels11.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==12 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels12.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==13 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels13.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==14 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels14.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==15 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels15.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==16 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels16.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==17 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels17.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==18 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels18.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==19 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels19.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==20 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels20.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	elif level==21 and n<1:
		remove_child(l_instance)
		l=preload("res://scene/levels/levels21.tscn")
		l_instance=l.instance()
		add_child(l_instance)
		n+=1
	if time>time_to_end and level>0:
		emit_signal("end")
		time=0.0
	if level>1:
		if time<5.0:
			$level.text="Level "+str(level)
		else:
			$level.text=""
	if time>0.9:
		if level==1:
			$level.text=""
	time=time+delta


func _on_Main_playnext():
	$Timer.start()
	pass # Replace with function body.


func _on_Timer_timeout():
	level+=1
	n=0
	
	pass # Replace with function body.


func _on_Main_retry():
	level=level
	n=0
	time=0
	
	pass # Replace with function body.


func _on_load_data_focus_entered():
	n=0
	time=0
	pass # Replace with function body.


func _on_load_data2_focus_entered():
	n=0
	time=0
	pass # Replace with function body.


func _on_load_data3_focus_entered():
	n=0
	time=0
	pass # Replace with function body.




func _on_new_game_instruction_startgame():
	if $new_game_instruction.n==2:
		n=0
		time=0
		level=1
	pass # Replace with function body.
