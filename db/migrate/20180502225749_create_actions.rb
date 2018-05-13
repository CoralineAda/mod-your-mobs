class CreateActions < ActiveRecord::Migration[5.1]
  def change
    create_table :actions do |t|
      t.integer :attack_bonus
      t.integer :damage_bonus
      t.string :damage_dice
      t.text :desc
      t.string :name
      t.boolean :is_legendary
    end
    create_join_table :actions, :monsters do |t|
      t.index [:action_id, :monster_id]
      t.index [:monster_id, :action_id]
    end
  end
end
