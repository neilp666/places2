class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name #name has to be added

  has_many :places, dependent: :destroy #user can add many places 
  has_many :reviews, dependent: :destroy #user can add many reviews 
end
