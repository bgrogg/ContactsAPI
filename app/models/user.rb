# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string           not null
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  has_many :contacts,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "Contact"

  has_many :contact_shares,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "ContactShare"

  has_many :shared_contacts,
    through: :contact_shares,
    source: :contact

  validates :username, presence: true, uniqueness: true
end
