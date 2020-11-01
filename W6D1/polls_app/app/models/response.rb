# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  user_id          :integer          not null
#  answer_choice_id :integer          not null
#
class Response < ApplicationRecord
    validates :user_id, presence: true
    validates :answer_choice_id, presence: true
    validate :not_duplicate_response
    validate :not_author_of_poll

    belongs_to :respondent,
        foreign_key: :user_id,
        class_name: :User

    belongs_to :answer_choice,
        foreign_key: :answer_choice_id,
        class_name: :AnswerChoice

    has_one :question,
        through: :answer_choice,
        source: :question

    def sibling_responses
        self.question.responses.where.not(id: self.id)
    end

    def respondent_already_answered?
        self.sibling_responses.exists?(user_id: self.user_id)
    end

    def not_duplicate_response
        if respondent_already_answered?
            errors[:user_id] << ', you have already voted on this question!'
        end
    end

    def respondent_author_of_poll?
        self.answer_choice.question.poll.user_id == self.user_id
    end

    def not_author_of_poll
        if respondent_author_of_poll?
            errors[:user_id] << ', you may not answer questions on your own poll!'
        end
    end
end
