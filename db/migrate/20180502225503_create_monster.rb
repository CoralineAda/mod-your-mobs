class CreateMonster < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :size
      t.string :kind
      t.string :subtype
      t.integer :level
      t.string :alignment
      t.integer :armor_class
      t.integer :hit_points
      t.integer :hit_dice
      t.string :speed
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :strength_save
      t.integer :dexterity_save
      t.integer :constitution_save
      t.integer :intelligence_save
      t.integer :wisdom_save
      t.integer :charisma_save
      t.integer :arcana
      t.integer :religion
      t.integer :perception
      t.integer :stealth
      t.integer :history
      t.integer :medicine
      t.integer :persuasion
      t.integer :deception
      t.integer :insight
      t.integer :athletics
      t.integer :acrobatics
      t.integer :survival
      t.integer :investigation
      t.integer :nature
      t.integer :intimidation
      t.integer :performance
      t.string :damage_immunities
      t.string :damage_vulnerabilities
      t.string :damage_resistances
      t.string :condition_immunities
      t.string :senses
      t.text :languages
      t.float :challenge_rating
    end
  end
end
