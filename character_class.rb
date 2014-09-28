require 'pry'

# This will contain all of the information to create a
# character of a specific class

class CharacterClass

CHARACTER_CLASSES =

  { "Cleric" => {
      description: "A priestly champion who wields divine magic in service of a higher power",
      starting_wealth: "",
      hit_die: "d8",
      primary_ability: "Wisdom",
      saving_throw: "Wisdom, Charisma",
      armor_proficiency: {},
      weapon_proficiency: {}
      },
    "Fighter" => {
      description: "",
      starting_wealth: "",
      hit_die: "",
      primary_ability: {},
      saving_throw: {},
      armor_proficiency: {},
      weapon_proficiency: {}
      },
    "Rogue" => {
      description: "",
      starting_wealth: "",
      hit_die: "",
      primary_ability: {},
      saving_throw: {},
      armor_proficiency: {},
      weapon_proficiency: {}
      },
    "Wizard" => {
      description: "",
      starting_wealth: "",
      hit_die: "",
      primary_ability: {},
      saving_throw: {},
      armor_proficiency: {},
      weapon_proficiency: {}
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

