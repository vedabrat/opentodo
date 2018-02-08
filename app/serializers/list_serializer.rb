class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :permissions, :title, :items

  def permissions
    object.permissions
  end

  def name
    object.name
  end

  def title
    object.title
  end

  def items
    object.items
  end

end
