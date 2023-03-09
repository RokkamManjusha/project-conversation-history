class Project < ApplicationRecord
  belongs_to :users
  has_many :comments

  enum STATUS: {pending: 'pending',
    in_progress: 'in_progress',
    completed: 'completed'}, _suffix: true
end
