class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :name

  def description
    object.description
  end

  def name
    object.name
  end

end
