# Hollowfang Trade — Set 1 card scripts
# Each key is a card name matching a definition in SetDefinition_HollowfangSet1.gd,
# mapped to a dictionary of trigger conditions and tasks.
#
# See SCRIPTING_ENGINE.md in the original framework docs for full reference.
#
# Example structure:
# const SET_SCRIPTS := {
#     "Card Name": {
#         "manual": {
#             "board": [
#                 {SP.KEY_SUBJECT: "self", SP.KEY_TASK: "flip_card"},
#             ]
#         }
#     }
# }
const SET_SCRIPTS := {}
