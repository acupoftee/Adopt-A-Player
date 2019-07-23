class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :url
  has_one :user
end
