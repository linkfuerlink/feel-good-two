class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  has_one :empowerment, dependent: :destroy

  after_create :initialize_empowerment

  private

  def initialize_empowerment
    Empowerment.create!(user: self)
  end
end
