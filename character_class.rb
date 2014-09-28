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
        description: "Padded armor consists of quilted layers of cloth and batting.",
        cost: "5 gp",
        armor_class: {initial: 11, modifier: "dexterity", max: nil},
        strength: "",
        stealth: "Disadvantage",
        weight: 8
        },
      leather: {
        description: "The breastplate and shoulder protectors of this armor are made of leather that has been stiffened by being boiled in oil. The rest of the armor is made of softer and more flexible materials.",
        cost: "10 gp",
        armor_class: {initial: 11, modifier: "dexterity", max: nil},
        strength: "",
        stealth: "",
        weight: 10
        },
      studed_leather: {
        description: "Made from tough but flexible leather, studded leather is reinforced with close-set rivets or spikes.",
        cost: "45 gp",
        armor_class: {initial: 12, modifier: "dexterity", max: nil},
        strength: "",
        stealth: "",
        weight: 13
      }
    },
  "Medium Armor" => {
      hide: {
        description: "This crude armor consists of thick furs and pelts. It is commonly worn by barbarian tribes, evil humanoids, and other folk who lack access to the tools and materials needed to create better armor.",
        cost: "10 gp",
        armor_class: {initial: 11, modifier: "dexterity", max: 2},
        strength: "",
        stealth: "",
        weight: 12
        },
      chain_shirt: {
        description: "Made of interlocking metal rings, a chain shirt is worn between layers of clothing or leather. This armor offers modest protection to the wearer’s upper body and allows the sound of the rings rubbing against one another to be muffled by outer layers.",
        cost: "50 gp",
        armor_class: {initial: 13, modifier: "dexterity", max: 2},
        strength: "",
        stealth: "",
        weight: 20
        },
      scale_mail: {
        description: "his armor consists of a coat and leggings (and perhaps a separate skirt) of leather covered with overlapping pieces of metal, much like the scales of a fish. The suit includes gauntlets.",
        cost: "50 gp",
        armor_class: {initial: 14, modifier: "dexterity", max: 2},
        strength: "",
        stealth: "Disadvantage",
        weight: 45
        },
      breast_plate: {
        description: "This armor consists of a fitted metal chest piece worn with supple leather. Although it leaves the legs and arms relatively unprotected, this armor provides good protection for the wearer’s vital organs while leaving the wearer relatively unencumbered.",
        cost: "400 gp",
        armor_class: {initial: 14, modifier: "dexterity", max: 2},
        strength: "",
        stealth: "",
        weight: 20
        },
      half_plate: {
        description: "Half plate consists of shaped metal plates that cover most of the wearer’s body. It does not include leg protection beyond simple greaves that are attached with leather straps.",
        cost: "750 gp",
        armor_class: {initial: 14, modifier: "dexterity", max: 2},
        strength: "",
        stealth: "Disadvantage",
        weight: 40
      }
    },
  "Heavy Armor" => {
      ring_mail: {
        description: "This armor is leather armor with heavy rings sewn into it. The rings help reinforce the armor against blows from swords and axes. Ring mail is inferior to chain mail, and it’s usually worn only by those who can’t afford better armor.",
        cost: "30 gp",
        armor_class: {initial: 14, modifier: "", max: nil},
        strength: "",
        stealth: "Disadvantage",
        weight: 45
        },
      chain_mail: {
        description: "Made of interlocking metal rings, chain mail includes a layer of quilted fabric worn underneath the mail to prevent chafing and to cushion the impact of blows. The suit includes gauntlets.",
        cost: "75 gp",
        armor_class: {initial: 16, modifier: "", max: nil},
        strength: "Str 13",
        stealth: "Disadvantage",
        weight: 55
        },
      splint: {
        description: "This armor is made of narrow vertical strips of metal riveted to a backing of leather that is worn over cloth padding. Flexible chain mail protects the joints.",
        cost: "200 gp",
        armor_class: {initial: 17, modifier: "", max: nil},
        strength: "Str 15",
        stealth: "Disadvantage",
        weight: 60
        },
      plate: {
        description: "Plate consists of shaped, interlocking metal plates to cover the entire body. A suit of plate includes gauntlets, heavy leather boots, a visored helmet, and thick layers of padding underneath the armor. Buckles and straps distribute the weight over the body.",
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

WEAPONS = {
  "Simple Melee Weapons" => {
    club: {
      cost: "1 sp",
      damage: { dice: "1d4", type: "bludgeoning" },
      weight: 2,
      properties: ["Light"]
      },
    dagger: {
      cost: "2 gp",
      damage: { dice: "1d8", type: "bludgeoning" },
      weight: 1,
      properties: ["Finesse", "Light", "Thrown", "Range 20/60"]
      },
    greatclub: {
      cost: "2 sp",
      damage: { dice: "1d8", type: "bludgeoning" },
      weight: 10,
      properties: ["Two-handed"]
      },
    handaxe: {
      cost: "5 gp",
      damage: { dice: "1d6", type: "slashing" },
      weight: 2,
      properties: ["Light", "Thrown", "Range 20/60"]
      },
    handaxe: {
      cost: "5 gp",
      damage: { dice: "1d6", type: "slashing" },
      weight: 2,
      properties: ["Light", "Thrown", "Range 20/60"]
      },
    javelin: {
      cost: "5 sp",
      damage: { dice: "1d6", type: "piercing" },
      weight: 2,
      properties: ["Thrown", "Range 30/120"]
      },
    light_hammer: {
      cost: "2 gp",
      damage: { dice: "1d4", type: "bludgeoning" },
      weight: 2,
      properties: ["Thrown", "Range 20/60"]
      },
    mace: {
      cost: "5 gp",
      damage: { dice: "1d6", type: "bludgeoning" },
      weight: 4,
      properties: []
      },
    quarterstaff: {
      cost: "2 sp",
      damage: { dice: "1d6", type: "bludgeoning" },
      weight: 2,
      properties: ["Versitile (1d8)"]
      },
    sickle: {
      cost: "1 gp",
      damage: { dice: "1d4", type: "slashing" },
      weight: 2,
      properties: ["Light"]
      },
    spear: {
      cost: "1 gp",
      damage: { dice: "1d6", type: "piercing" },
      weight: 3,
      properties: ["Thrown", "Range 20/60", "Versitile (1d8)"]
      }
    },
  "Simple Ranged Weapons" => {
    light_crossbow: {
      cost: "25 gp",
      damage: { dice: "1d8", type: "piercing" },
      weight: 5,
      properties: ["Ammunition", "Range 80/320", "Loading", "Two-handed"]
      },
    dart: {
      cost: "5 cp",
      damage: { dice: "1d4", type: "piercing" },
      weight: 0.25,
      properties: ["Finesse", "Thrown", "Range 20/60"]
      },
    shortbow: {
      cost: "25 gp",
      damage: { dice: "1d6", type: "piercing" },
      weight: 2,
      properties: ["Ammunition", "Two-handed"]
      },
    sling: {
      cost: "1 sp",
      damage: { dice: "1d4", type: "bludgeoning" },
      weight: 3,
      properties: ["Ammunition", "Range 30/120", "Versitile (1d8)"]
      },
    },
  "Martial Melee Weapons" => {},
  "Martial Ranged Weapons" => {},
}
end

