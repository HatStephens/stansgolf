class Event < ActiveRecord::Base

  has_many :reports

  scope :regular, -> { where('regular_event = ?', true) }

end
