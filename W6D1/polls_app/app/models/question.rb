# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  poll_id    :integer          not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Question < ApplicationRecord
    validates :poll_id, presence: true
    validates :title, presence: true

    belongs_to :poll,
        foreign_key: :poll_id,
        class_name: :Poll

    has_many :answer_choices,
        foreign_key: :question_id,
        class_name: :AnswerChoice

    has_many :responses,
        through: :answer_choices,
        source: :responses

    def results
        # counts = Hash.new(0)
        # choices = self.answer_choices.includes(:responses)

        # choices.each do |choice|
        #     counts[choice.text] = choice.responses.length
        # end

        # counts
        
        # choices_with_counts = AnswerChoice.find_by_sql([<<-SQL, id])
        #     SELECT
        #         answer_choices.text, COUNT(responses.id) AS counts
        #     FROM
        #         answer_choices
        #     LEFT OUTER JOIN
        #         responses ON answer_choices.id = responses.answer_choice_id
        #     WHERE
        #         answer_choices.question_id = ?
        #     GROUP BY
        #         answer_choices.id;
        # SQL

        choices_with_counts = self.answer_choices
            .select('answer_choices.text, COUNT(responses.id) AS counts')
            .left_outer_joins(:responses)
            .group('answer_choices.id')

        result = {}
        choices_with_counts.each { |choice| result[choice.text] = choice.counts }
        result
    end
end
