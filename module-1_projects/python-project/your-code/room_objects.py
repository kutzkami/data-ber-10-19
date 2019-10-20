# define room and items

couch = {
    "name": "couch",
    "type": "furniture",
}

door_a = {
    "name": "door a",
    "type": "door",
}

key_a = {
    "name": "key for door a",
    "type": "key",
    "target": door_a,
}

piano = {
    "name": "piano",
    "type": "furniture",
}

game_room = {
    "name": "game room",
    "type": "room",
}

door_b = {
    "name": "door b",
    "type": "door",
}

key_b = {
    "name": "key b",
    "type": "key",
    "target": door_b,
}

queen_bed = {
    "name": "queen bed",
    "type": "furniture",
}

bedroom_1 = {
    "name": "bedroom 1",
    "type": "room",
}

door_d = {
    "name": "door d",
    "type": "door",
} 

key_d = {
    "name": "key d",
    "type": "key",
    "target": door_d
}

dresser = {
    "name": "dresser",
    "type": "furniture",
}

door_c = {
    "name": "door c",
    "type": "door",
}

key_c = {
    "name": "key c",
    "type": "key",
    "target": door_c,
}

double_bed = {
    "name": "double bed",
    "type": "furniture",
}

bedroom_2 = {
    "name": "bedroom 2",
    "type": "room",
}

dining_table= {
    "name": "dining table",
    "type": "furniture"
}

living_room = {
    "name": "living room",
    "type": "room"
}

outside = {
  "name": "outside"
}

all_rooms = [game_room, bedroom_1, bedroom_2, living_room, outside]

all_doors = [door_a, door_b, door_c, door_d]

# define which items/rooms are related

object_relations = {
    "game room": [couch, piano, door_a],
    "piano": [key_a],
    "door a": [game_room, bedroom_1],
    "bedroom 1": [queen_bed, door_b, door_c, door_a],
    "queen bed": [key_b],
    "door b": [bedroom_1, bedroom_2],
    "door c": [bedroom_1, living_room],
    "bedroom 2": [double_bed, dresser, door_b],
    "double bed": [key_c],
    "dresser": [key_d],
    "living room": [dining_table, door_d],
    "door d": [living_room, outside],
    "outside": [door_d],
}