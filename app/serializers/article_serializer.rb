class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :name, :author, :published_at, :content
end
