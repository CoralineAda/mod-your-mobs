class Monster < ApplicationRecord

  validates_uniqueness_of :name
  validates_presence_of :name

  has_and_belongs_to_many :special_abilities
  has_and_belongs_to_many :actions
  has_and_belongs_to_many :reactions

  def special_abilities=(abilities=[])
    abilities.each do |ability|
      ability_record = SpecialAbility.find_or_create_by(ability)
      self.special_abilities << ability_record
    end
  end

  def actions=(actions=[])
    actions.each do |action|
      action_record = Action.find_or_create_by(action)
      self.actions << action_record
    end
  end

  def reactions=(reactions=[])
    reactions.each do |reaction|
      reaction_record = Reaction.find_or_create_by(reaction)
      self.reactions << reaction_record
    end
  end

  def legendary_actions=(actions=[])
    new_actions = actions.map{ |action| action[:is_legendary] = true; action }
    actions = new_actions
  end

end
