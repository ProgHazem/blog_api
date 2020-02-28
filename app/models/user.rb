# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  # mount image
  mount_uploader :image, ImageUploader

  #------------------------- Relations ----------------------#
  has_many :posts, foreign_key: :author
  has_many :comments

  validates_uniqueness_of :email
end
