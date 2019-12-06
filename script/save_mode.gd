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
#save mode Script 
extends Node2D
const SAVE_PATH="res://savegame/save.json"
const SAVE_PATH2="res://savegame/save2.json"
const SAVE_PATH3="res://savegame/save3.json"
const SAVE_PATH_BEST_SCORE="res://savegame/best_score.json"
func _ready():
	# active load game if files exist
	var save_file= File.new()
	if save_file.file_exists(SAVE_PATH):
		save_file.open(SAVE_PATH,File.READ)
		var load_game=save.load_game(1)
		#load game datsa
		for node_path in load_game.keys():
		
			for attribute in load_game["1"]:
				if attribute =="player_data":
					$save/data.text="Nom:"+load_game["1"]["player_data"]["player_name"]+"  Level:"+String(load_game["1"]["player_data"]["player_level"])+ "  Score:"+String(load_game["1"]["player_data"]["player_score"])+"  Life:"+String(load_game["1"]["player_data"]["player_life"])
					#$save/load_data.disabled=false
					
	if save_file.file_exists(SAVE_PATH2):
		save_file.open(SAVE_PATH2,File.READ)
		var load_game=save.load_game(2)
		#load game datsa
		for node_path in load_game.keys():
		
			for attribute in load_game["2"]:
				if attribute =="player_data":
					$save2/data.text="Nom:"+load_game["2"]["player_data"]["player_name"]+"  Level:"+String(load_game["2"]["player_data"]["player_level"])+ "  Score:"+String(load_game["2"]["player_data"]["player_score"])+"  Life:"+String(load_game["2"]["player_data"]["player_life"])
					#$save2/load_data2.disabled=false
					
	if save_file.file_exists(SAVE_PATH3):
		save_file.open(SAVE_PATH3,File.READ)
		var load_game=save.load_game(3)
		#load game datsa
		for node_path in load_game.keys():
		
			for attribute in load_game["3"]:
				if attribute =="player_data":
					$save3/data.text="Nom:"+load_game["3"]["player_data"]["player_name"]+"  Level:"+String(load_game["3"]["player_data"]["player_level"])+ "  Score:"+String(load_game["3"]["player_data"]["player_score"])+"  Life:"+String(load_game["3"]["player_data"]["player_life"])
					#$save3/load_data3.disabled=false
	pass




