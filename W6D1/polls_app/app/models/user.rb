# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :authored_polls,
        foreign_key: :user_id,
        class_name: :Poll

    has_many :responses,
        foreign_key: :user_id,
        class_name: :Response

    def completed_polls
        Poll.find_by_sql(<<-SQL)
        SELECT
            polls.*
        FROM
            polls
        JOIN
            questions ON polls.id = questions.poll_id
        JOIN
            answer_choices ON questions.id = answer_choices.question_id
        LEFT OUTER JOIN (
            SELECT
                *
            FROM
                responses
            WHERE
                user_id = #{self.id}
        ) AS responses ON answer_choices.id = responses.answer_choice_id
        GROUP BY
            polls.id
        HAVING
            COUNT(DISTINCT questions.id) = COUNT(responses.*)
        SQL
    end

    def incompleted_polls
        Poll.find_by_sql(<<-SQL)
        SELECT
            polls.*
        FROM
            polls
        JOIN
            questions ON polls.id = questions.poll_id
        JOIN
            answer_choices ON questions.id = answer_choices.question_id
        LEFT OUTER JOIN (
            SELECT
                *
            FROM
                responses
            WHERE
                user_id = #{self.id}
        ) AS responses ON answer_choices.id = responses.answer_choice_id
        GROUP BY
            polls.id
        HAVING
            COUNT(DISTINCT questions.id) != COUNT(responses.*)
                AND COUNT(responses.*) > 0
        SQL
    end
end
