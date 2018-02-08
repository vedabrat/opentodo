class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name

def email
  object.email
end


end
