class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
  has_many :sponsored_posts, dependent: :destroy
  scope :publically_viewable, -> { where(public: true) }
  scope :privately_viewable, -> { where(public: false) }
  
  scope :visable_to, -> (user) {user ? all : publically_viewable}

  validates :name, length: { minimum: 5 }, presence: true
  validates :description, length: { minimum: 15 }, presence: true

end
