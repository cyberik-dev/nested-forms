class RoomCategory < ActiveRecord::Base
  belongs_to :hotel

  attr_accessible :name, :_destroy

  validates :name,
            presence: true
  def to_s
    name
  end
end