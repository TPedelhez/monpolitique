class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :opinions, dependent: :destroy
  has_many :cards, through: :opinions

  validates :age, presence: true
  validates :job, presence: true

end
