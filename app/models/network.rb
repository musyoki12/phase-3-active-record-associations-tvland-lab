class Network < ActiveRecord::Base
  has_many :shows
  def sorry
    "we're sorry about passing on John  Mulaney's pilot"
  end
end
