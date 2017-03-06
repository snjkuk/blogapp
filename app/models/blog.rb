class Blog < ApplicationRecord
has_many :comnnts
  validates :title, presence: true,
                    length: { minimum: 5 }



 def self.search(search)
  where("title LIKE ?", "%#{search}%")
  end
end

