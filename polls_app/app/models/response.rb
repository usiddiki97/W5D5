class Response < ApplicationRecord

    belongs_to :answer_choice,
    foreign_key: :answer_choice_id,
    primary_key: :id,
    class_name: 'AnswerChoice'

    belongs_to :respondent,
    foreign_key: :respondent_id,
    primary_key: :id,
    class_name: 'User'

end