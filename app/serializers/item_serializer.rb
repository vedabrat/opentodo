class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :name, :username

  def description
    object.description
  end

end
