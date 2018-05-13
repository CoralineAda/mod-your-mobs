class CreateReactions < ActiveRecord::Migration[5.1]
  def change
    create_table :reactions do |t|
      t.integer :attack_bonus
      t.integer :damage_bonus
      t.string :damage_dice
      t.string :name
      t.text :desc
    end
    create_join_table :reactions, :monsters do |t|
      t.index [:reaction_id, :monster_id]
      t.index [:monster_id, :reaction_id]
    end
  end
end
