class User < ActiveRecord::Base
  has_many :posts
  def self.avatar_url(user, size)
       gravatar_id = Digest::MD5::hexdigest(user.email).downcase
       "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
  end

    before_save { self.email = email.downcase }
    before_save { capitalize_name }


    def capitalize_name
      name_array = name.split
      name_array.each do |n|
        n.capitalize!
      end
      self.name = name_array.join(" ")
    end

    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :name, length: { minimum: 1, maximum: 100 }, presence: true
    validates :password, presence: true, length: { minimum: 6 }

    validates :email,
             presence: true,
             uniqueness: { case_sensitive: false },
             length: { minimum: 3, maximum: 100 },
             format: { with: EMAIL_REGEX }

    has_secure_password

end
