# == Schema Information

#
# Table name: goals
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  description :string           not null
#  start_date  :date             not null
#  end_date    :date             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  author_id   :integer          not null
#
class Goal < ApplicationRecord



    belongs_to :user,
    foreign_key: :author_id,
    class_name: :User
end
