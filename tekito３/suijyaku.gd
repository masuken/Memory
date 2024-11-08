extends Container


@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var front: Sprite2D = $front


var faceup: bool = false
var yokai_number:int

var root_node:Node
var neruma:Node

func _ready() -> void:
	root_node = get_node("/root/Game")
	

func load_cardface(path):
	front.texture = load(path)
	

func _on_button_pressed() -> void:
	root_node.set_card_to_slot(self)
	

func flip_card():
	animation_player.play("flip_suijyaku")
	faceup = true
	Audio.get_node("paka").play()
	
func flip_back_card():
	animation_player.play_backwards("flip_suijyaku")
	faceup = false

