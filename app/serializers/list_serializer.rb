class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :permissions

  def permissions
    object.permissions
  end

  def name
    object.name
  end

end
