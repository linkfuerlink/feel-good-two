class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  has_one :empowerment, dependent: :destroy

  after_create :initialize_funeral

  private

  def initialize_funeral
    Empowerment.create!(user: self)
  end
end
