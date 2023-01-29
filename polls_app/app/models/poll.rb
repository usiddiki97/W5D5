# == Schema Information
#
# Table name: polls
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Poll < ApplicationRecord
    validates :title, presence: true

    belongs_to :author,
        foreign_key: :author_id,
        primary_key: :id,
        class_name: 'User'

    has_many :questions,
        foreign_key: :poll_id,
        primary_key: :id,
        class_name: 'Question'
    
end
