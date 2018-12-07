class Restaurant < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :description, presence: true, length: { maximum: 300 }

  def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%").order('id DESC')
    else
      order('id DESC') 
    end
  end
end
