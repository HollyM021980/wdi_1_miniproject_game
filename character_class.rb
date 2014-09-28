require 'pry'

# This will contain all of the information to create a
# character of a specific class

class CharacterClass

ABILITY_DEFAULTS = {}
CHARACTER_CLASSES =
  { "Cleric" => {
      description: "A priestly champion who wields divine magic in service of a higher power.",
      starting_wealth: "",
      hit_die: 8,
      primary_ability: ["Wisdom"],
      saving_throw_proficiencies: ["Wisdom", "Charisma"],
      armor_proficiency: ["Light Armor", "Medium Armor", "Shield"],
      weapon_proficiency: ["Simple Melee Weapons"]
      },
    "Fighter" => {
      description: "A master of martial combat, skilled with a variety of weapons and armor",
      starting_wealth: "",
      hit_die: 10,
      primary_ability: ["Strength", "Dexterity"],
      saving_throw_proficiencies: ["Strength", "Constitution"],
      armor_proficiency: ["Light Armor", "Medium Armor", "Heavy Armor", "Shield"],
      weapon_proficiency: ["Simple Melee Weapons", "Simple Ranged Weapons", "Martial Melee Weapons", "Martial Ranged Weapons"]
      },
    "Rogue" => {
      description: "A scoundrel who uses stealth and trickery to overcome obstacles and enemies.",
      starting_wealth: "",
      hit_die: 8,
      primary_ability: ["Dexterity"],
      saving_throw_proficiencies: ["Dexterity", "Intelligence"],
      armor_proficiency: ["Light Armor"],
      weapon_proficiency: ["Simple Melee Weapons", "Hand Crossbows", "Longswords", "Rapiers", "Shortswords"]
      },
    "Wizard" => {
      description: "A scholarly magic-user capable of manipulating the structures of reality.",
      starting_wealth: "",
      hit_die: 6,
      primary_ability: ["Intelligence"],
      saving_throw_proficiencies: ["Intelligence", "Wisdom"],
      armor_proficiency: ["Light Armor", "Medium Armor", "Shield", "Simple Melee Weapons"],
      weapon_proficiency: ["Daggers", "Darts", "Sling", "Quarterstaff", "light Crossbow"]
    }
}

ARMOR = {
  "Light Armor" => {
      padded: {
        description: "",
        cost: "",
        armor_class: {},
        strength: "",
        stealth: "",
        weight: 0
        },
      leather: {},
      studed_leather: {}
    },
  "Medium Armor" => {
      hide: {},
      chain_shirt: {},
      scale_mail: {},
      breast_plate: {},
      half_plate: {}
    },
  "Heavy Armor" => {
      ring_mail: {},
      chain_mail: {},
      splint: {},
      plate: {}
    },
  "Shield" => {

  }
}

end

