# Hollowfang Trade — Set 1 card definitions
# Each key is a card name, mapped to a dictionary of its properties.
# Properties must match the fields defined in CardConfig.gd.
#
# Example structure (uncomment and fill in when ready):
# const SET_DEFINITIONS := {
#     "Card Name": {
#         "Type": "Creature",
#         "Cost": 2,
#         "Power": 3,
#         "Abilities": "Your card text here.",
#     },
# }
const SET_DEFINITIONS := {
	"Ashclaw Wisp": {
		"Type": "Monster",
		"Cost": 1,
		"Attack": 2,
		"HP": 2,
		"Abilities": "Rush.",
		"_Sprite": "res://assets/monsters/pack_01/Pixel Battlers - Animated RPG Monsters 01/Monster 001/TB_Monster_001_A.png",
		"_FrameW": 64,
		"_FrameH": 64,
		"_FrameCount": 8,
		"_FPS": 8.0,
	},
	"Thornback Crawler": {
		"Type": "Monster",
		"Cost": 2,
		"Attack": 3,
		"HP": 3,
		"Abilities": "When this enters the field, deal 1 damage to target.",
		"_Sprite": "res://assets/monsters/pack_01/Pixel Battlers - Animated RPG Monsters 01/Monster 002/TB_Monster_002_A.png",
		"_FrameW": 64,
		"_FrameH": 64,
		"_FrameCount": 8,
		"_FPS": 8.0,
	},
	"Mirewyrm Hatchling": {
		"Type": "Monster",
		"Cost": 1,
		"Attack": 1,
		"HP": 4,
		"Abilities": "Shield. {damage} effects deal 1 less to this creature.",
		"_Sprite": "res://assets/monsters/pack_01/Pixel Battlers - Animated RPG Monsters 01/Monster 003/TB_Monster_003_A.png",
		"_FrameW": 64,
		"_FrameH": 64,
		"_FrameCount": 8,
		"_FPS": 8.0,
	},
	"Blazefang Stalker": {
		"Type": "Monster",
		"Cost": 3,
		"Attack": 5,
		"HP": 2,
		"Abilities": "Frenzy: Attack twice per turn.",
		"_Sprite": "res://assets/monsters/pack_01/Pixel Battlers - Animated RPG Monsters 01/Monster 004/TB_Monster_004_A.png",
		"_FrameW": 64,
		"_FrameH": 64,
		"_FrameCount": 8,
		"_FPS": 8.0,
	},
	"Duskmantle Sentinel": {
		"Type": "Monster",
		"Cost": 4,
		"Attack": 4,
		"HP": 6,
		"Abilities": "Taunt. Other friendly monsters gain +1 {damage}.",
		"_Sprite": "res://assets/monsters/pack_01/Pixel Battlers - Animated RPG Monsters 01/Monster 005/TB_Monster_005_A.png",
		"_FrameW": 64,
		"_FrameH": 64,
		"_FrameCount": 8,
		"_FPS": 8.0,
	},
}
