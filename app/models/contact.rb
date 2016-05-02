class Contact < ActiveRecord::Base
  belongs_to :user
  has_many :addresses
  has_many :phone_numbers
end
