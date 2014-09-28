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
        cost: "5 gp",
        armor_class: {initial: 11, modifier: "dexterity", max: nil},
        strength: "",
        stealth: "Disadvantage",
        weight: 8
        },
      leather: {
        description: "",
        cost: "10 gp",
        armor_class: {initial: 11, modifier: "dexterity", max: nil},
        strength: "",
        stealth: "",
        weight: 10
        },
      studed_leather: {
        description: "",
        cost: "45 gp",
        armor_class: {initial: 12, modifier: "dexterity", max: nil},
        strength: "",
        stealth: "",
        weight: 13
      }
    },
  "Medium Armor" => {
      hide: {
        description: "",
        cost: "10 gp",
        armor_class: {initial: 11, modifier: "dexterity", max: 2},
        strength: "",
        stealth: "",
        weight: 12
        },
      chain_shirt: {
        description: "",
        cost: "50 gp",
        armor_class: {initial: 13, modifier: "dexterity", max: 2},
        strength: "",
        stealth: "",
        weight: 20
        },
      scale_mail: {
        description: "",
        cost: "50 gp",
        armor_class: {initial: 14, modifier: "dexterity", max: 2},
        strength: "",
        stealth: "Disadvantage",
        weight: 45
        },
      breast_plate: {
        description: "",
        cost: "400 gp",
        armor_class: {initial: 14, modifier: "dexterity", max: 2},
        strength: "",
        stealth: "",
        weight: 20
        },
      half_plate: {
        description: "",
        cost: "750 gp",
        armor_class: {initial: 14, modifier: "dexterity", max: 2},
        strength: "",
        stealth: "Disadvantage",
        weight: 40
      }
    },
  "Heavy Armor" => {
      ring_mail: {
        description: "",
        cost: "30 gp",
        armor_class: {initial: 14, modifier: "", max: nil},
        strength: "",
        stealth: "Disadvantage",
        weight: 45
        },
      chain_mail: {
        description: "",
        cost: "75 gp",
        armor_class: {initial: 16, modifier: "", max: nil},
        strength: "Str 13",
        stealth: "Disadvantage",
        weight: 55
        },
      splint: {
        description: "",
        cost: "200 gp",
        armor_class: {initial: 17, modifier: "", max: nil},
        strength: "Str 15",
        stealth: "Disadvantage",
        weight: 60
        },
      plate: {
        description: "",
        cost: "1500 gp",
        armor_class: {initial: 18, modifier: "", max: nil},
        strength: "Str 15",
        stealth: "Disadvantage",
        weight: 65

      }
    },
  "Shield" => {
        description: "",
        cost: "10 gp",
        armor_class: {initial: 2, modifier: "+", max: nil},
        strength: "",
        stealth: "",
        weight: 6
  }
}
end

