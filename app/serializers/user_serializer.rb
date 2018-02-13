class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :list_titles

  def list_titles
    object.list_titles
  end

  def name
    object.name
  end

  def password
    "#{object.name.downcase}_password"
  end

  def username
    object.username
  end

  def id
    object.id
  end
end
