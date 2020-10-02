class Poll < ApplicationRecord
    validates :title, presence: true, uniqueness: true

    belongs_to :author,
    foreign_key: :author_id,
    primary_key: :id,
    class_name: 'User'

    has_many :questions,
    foreign_key: :question_id, 
    primary_key: :id,
    class_name: 'Question'

end






























