class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image
  has_many :comments
  has_one :posts, foreign_key: :author

end
