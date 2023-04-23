class PostSerializer < ActiveModel::Serializer
  has_many :comments , serializer: CommentSerializer
  attributes :id , :name , :title , :desc 
end
