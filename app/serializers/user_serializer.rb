class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username

  def name
    object.name
  end

  def username
    object.username
  end

  def id
    object.id
  end

end
