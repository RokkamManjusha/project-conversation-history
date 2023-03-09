class Comment < ApplicationRecord
  belongs_to :project
  belongs_to :user
  enum change_type: {
    comment: 'comment',
    status: 'status'
  }, _suffix: true
end
