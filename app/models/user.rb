class User < ActiveRecord::Base
  has_many :campaigns
  has_many :characters

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def campaigns_ran
    Campaign.where(user: self)
  end

  #TODO make this work
  def campaigns_in
    my_characters = Character.where(user: self)

  end

end
