class Blog < ApplicationRecord
mount_uploader :images, AvatarUploader
has_many :comnnts, dependent: :destroy
belongs_to :categoryy
  validates :title, presence: true,
                    length: { minimum: 5 }



 def self.search(search)
  where("title LIKE ?", "%#{search}%")
  end


end

