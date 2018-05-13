# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180513191210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.integer "attack_bonus"
    t.integer "damage_bonus"
    t.string "damage_dice"
    t.text "desc"
    t.string "name"
    t.boolean "is_legendary"
  end

  create_table "actions_monsters", id: false, force: :cascade do |t|
    t.bigint "action_id", null: false
    t.bigint "monster_id", null: false
    t.index ["action_id", "monster_id"], name: "index_actions_monsters_on_action_id_and_monster_id"
    t.index ["monster_id", "action_id"], name: "index_actions_monsters_on_monster_id_and_action_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.string "kind"
    t.string "subtype"
    t.integer "level"
    t.string "alignment"
    t.integer "armor_class"
    t.integer "hit_points"
    t.integer "hit_dice"
    t.string "speed"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.integer "strength_save"
    t.integer "dexterity_save"
    t.integer "constitution_save"
    t.integer "intelligence_save"
    t.integer "wisdom_save"
    t.integer "charisma_save"
    t.integer "arcana"
    t.integer "religion"
    t.integer "perception"
    t.integer "stealth"
    t.integer "history"
    t.integer "medicine"
    t.integer "persuasion"
    t.integer "deception"
    t.integer "insight"
    t.integer "athletics"
    t.integer "acrobatics"
    t.integer "survival"
    t.integer "investigation"
    t.integer "nature"
    t.integer "intimidation"
    t.integer "performance"
    t.string "damage_immunities"
    t.string "damage_vulnerabilities"
    t.string "damage_resistances"
    t.string "condition_immunities"
    t.string "senses"
    t.text "languages"
    t.float "challenge_rating"
  end

  create_table "monsters_reactions", id: false, force: :cascade do |t|
    t.bigint "reaction_id", null: false
    t.bigint "monster_id", null: false
    t.index ["monster_id", "reaction_id"], name: "index_monsters_reactions_on_monster_id_and_reaction_id"
    t.index ["reaction_id", "monster_id"], name: "index_monsters_reactions_on_reaction_id_and_monster_id"
  end

  create_table "monsters_special_abilities", id: false, force: :cascade do |t|
    t.bigint "special_ability_id", null: false
    t.bigint "monster_id", null: false
    t.index ["monster_id", "special_ability_id"], name: "monster_ability"
    t.index ["special_ability_id", "monster_id"], name: "ability_monster"
  end

  create_table "reactions", force: :cascade do |t|
    t.integer "attack_bonus"
    t.integer "damage_bonus"
    t.string "damage_dice"
    t.string "name"
    t.text "desc"
  end

  create_table "special_abilities", force: :cascade do |t|
    t.string "name"
    t.text "desc"
    t.integer "attack_bonus"
    t.string "damage_dice"
    t.integer "damage_bonus"
  end

end
