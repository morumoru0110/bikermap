class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image
  has_many :stores, dependent: :destroy 
                      #ユーザーが消去されたら、それに紐付いた店舗も削除
  validates :username, presence: true

end
