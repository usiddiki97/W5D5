class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :authored_polls,
    foreign_key: :author_id,
    primary_key: :id,
    class_name: 'Poll'

    has_many :responses,
    foreign_key: :respondent_id,
    primary_key: :id,
    class_name: 'Response'
end