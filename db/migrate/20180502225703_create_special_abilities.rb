class CreateSpecialAbilities < ActiveRecord::Migration[5.1]
  def change
    create_table :special_abilities do |t|
      t.string :name
      t.text :desc
      t.integer :attack_bonus
      t.string :damage_dice
      t.integer :damage_bonus
      t.integer :attack_bonus
    end
    create_join_table :special_abilities, :monsters do |t|
      t.index [:special_ability_id, :monster_id], name: 'ability_monster'
      t.index [:monster_id, :special_ability_id], name: 'monster_ability'
    end
  end
end
