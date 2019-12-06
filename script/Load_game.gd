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
const SAVE_PATH="res://savegame/save.json"
const SAVE_PATH2="res://savegame/save2.json"
const SAVE_PATH3="res://savegame/save3.json"
var chekload1=preload("res://scene/Main.tscn").instance()
func _ready():
	
	# active load game if exist
	var save_file= File.new()
	if save_file.file_exists(SAVE_PATH):
		save_file.open(SAVE_PATH,File.READ)
		var load_game=save.load_game(1)
		#load game datsa
		for node_path in load_game.keys():
		
			for attribute in load_game["1"]:
				if attribute =="player_data":
					$load_theme/save/data.text="Nom:"+load_game["1"]["player_data"]["player_name"]+"  Level:"+String(load_game["1"]["player_data"]["player_level"])+ "  Score:"+String(load_game["1"]["player_data"]["player_score"])+"  Life:"+String(load_game["1"]["player_data"]["player_life"])
					$load_theme/save/load_data.disabled=false
					
	if save_file.file_exists(SAVE_PATH2):
		save_file.open(SAVE_PATH2,File.READ)
		var load_game=save.load_game(2)
		#load game datsa
		for node_path in load_game.keys():
		
			for attribute in load_game["2"]:
				if attribute =="player_data":
					$load_theme/save2/data.text="Nom:"+load_game["2"]["player_data"]["player_name"]+"  Level:"+String(load_game["2"]["player_data"]["player_level"])+ "  Score:"+String(load_game["2"]["player_data"]["player_score"])+"  Life:"+String(load_game["2"]["player_data"]["player_life"])
					$load_theme/save2/load_data2.disabled=false
					
	if save_file.file_exists(SAVE_PATH3):
		save_file.open(SAVE_PATH3,File.READ)
		var load_game=save.load_game(3)
		#load game datsa
		for node_path in load_game.keys():
		
			for attribute in load_game["3"]:
				if attribute =="player_data":
					$load_theme/save3/data.text="Nom:"+load_game["3"]["player_data"]["player_name"]+"  Level:"+String(load_game["3"]["player_data"]["player_level"])+ "  Score:"+String(load_game["3"]["player_data"]["player_score"])+"  Life:"+String(load_game["3"]["player_data"]["player_life"])
					$load_theme/save3/load_data3.disabled=false
	pass


func _on_load_data_focus_entered():
	#var chekload1=preload("res://scene/Main.tscn").instance()
	add_child(chekload1)
	chekload1._on_load_data_focus_entered()
	$load_theme.hide()
	pass # Replace with function body.


func _on_load_data2_focus_entered():
	var chekload1=preload("res://scene/Main.tscn").instance()
	add_child(chekload1)
	chekload1._on_load_data2_focus_entered()
	$load_theme.hide()
	pass # Replace with function body.


func _on_load_data3_focus_entered():
	var chekload1=preload("res://scene/Main.tscn").instance()
	add_child(chekload1)
	chekload1._on_load_data3_focus_entered()
	$load_theme.hide()
	pass # Replace with function body.


func _on_close_button_focus_entered():
	self.hide()
	pass # Replace with function body.
