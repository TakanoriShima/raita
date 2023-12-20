class User < ApplicationRecord
  before_save { self.email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  GENDERS = ['Mens', 'Womens']  # 選択肢の定義
  
  validates :gender, inclusion: { in: GENDERS, message: "must be one of #{GENDERS.join(', ')}" }
  
  validates :age, presence: true, numericality: { only_integer: true }, length: { maximum: 2 }
  
  has_secure_password
end