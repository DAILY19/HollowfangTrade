extends CardFront

var _monster_art_loaded := false

func _ready() -> void:
	_card_text = find_child("CardText")
	card_labels["Name"] = find_child("Name")
	card_labels["Type"] = find_child("Type")
	card_labels["Abilities"] = find_child("Abilities")
	card_labels["Cost"] = find_child("Cost")
	card_labels["Attack"] = find_child("Attack")
	card_labels["HP"] = find_child("HP")

	card_label_min_sizes["Name"] = Vector2(CFConst.CARD_SIZE.x - 4, 19)
	card_label_min_sizes["Type"] = Vector2(CFConst.CARD_SIZE.x - 4, 13)
	card_label_min_sizes["Abilities"] = Vector2(CFConst.CARD_SIZE.x - 4, 120)
	card_label_min_sizes["Cost"] = Vector2(16, 16)
	card_label_min_sizes["Attack"] = Vector2(16, 16)
	card_label_min_sizes["HP"] = Vector2(16, 16)

	for l in card_label_min_sizes:
		card_labels[l].custom_minimum_size = card_label_min_sizes[l]

	for label in card_labels:
		match label:
			"Cost", "Attack", "HP":
				original_font_sizes[label] = 15
			"Abilities":
				original_font_sizes[label] = 25
			_:
				original_font_sizes[label] = 16

	card_owner.connect("state_changed", Callable(self, "_on_card_state_changed"))


func _on_card_state_changed(_card, _old_state, new_state) -> void:
	if not $MonsterArt.frames:
		return
	var focused_states := [
		Card.CardState.FOCUSED_IN_HAND,
		Card.CardState.FOCUSED_ON_BOARD,
		Card.CardState.FOCUSED_IN_POPUP,
	]
	if new_state in focused_states:
		$MonsterArt.play("idle")
	else:
		$MonsterArt.stop()


func load_monster_art() -> void:
	if _monster_art_loaded:
		return
	var sprite_path: String = card_owner.properties.get("_Sprite", "")
	if sprite_path.is_empty():
		return
	var texture = load(sprite_path)
	if not texture:
		return
	var frame_count: int = card_owner.properties.get("_FrameCount", 4)
	var frame_w: int = card_owner.properties.get("_FrameW", 64)
	var frame_h: int = card_owner.properties.get("_FrameH", 64)
	var fps: float = card_owner.properties.get("_FPS", 8.0)
	var frames := SpriteFrames.new()
	frames.add_animation("idle")
	frames.set_animation_loop("idle", true)
	frames.set_animation_speed("idle", fps)
	for i in range(frame_count):
		var atlas := AtlasTexture.new()
		atlas.atlas = texture
		atlas.region = Rect2(i * frame_w, 0, frame_w, frame_h)
		frames.add_frame("idle", atlas)
	$MonsterArt.frames = frames
	$MonsterArt.frame = 0
	var art_area := 96.0
	$MonsterArt.scale = Vector2(art_area / frame_h, art_area / frame_h)
	_monster_art_loaded = true
