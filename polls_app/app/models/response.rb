# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  answer_choice_id :integer          not null
#  respondent_id    :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Response < ApplicationRecord
    validate :not_duplicate_response, unless: -> { answer_choice.nil? }

    belongs_to :answer_choice,
        primary_key: :id,
        foreign_key: :answer_choice_id,
        class_name: 'AnswerChoice'

    belongs_to :respondent,
        primary_key: :id,
        foreign_key: :respondent_id,
        class_name: 'User'
    
    has_one :question,
        through: :answer_choice,
        source: :question
    
    def sibling_responses
        self.question.responses.where.not(id: self.id)
    end

    def respondent_already_answered?
        sibling.responses.exists?(respondent_id: self.respondent_id)
    end

    private

    def not_duplicate_response
        if respondent_already_answered?
            errors[:base] << "This user has already responded"
        end
    end
    
end
