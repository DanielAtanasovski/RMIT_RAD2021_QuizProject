class Question < ApplicationRecord
  validates :question_id, :presence => true, :uniqueness => true
  validates :question, :answers, :correct, :presence => true
end
