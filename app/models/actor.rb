class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  def full_name
    "#{self.first_name}_#{self.last_name"}"
  end
  def list_roles
    self.characters.map do |character|
        "#{character.name}_#{character.show.name}"
    end
  end
end