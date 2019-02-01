class Todo < ApplicationRecord
  belongs_to :user

  scope :contains, -> (keyword) {
    q = "%#{sanitize_sql_like(keyword)}%"
    where("title LIKE ? OR body LIKE ?", q, q)
  }

end
