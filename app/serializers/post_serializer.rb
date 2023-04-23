class PostSerializer < ActiveModel::Serializer
  has_many :comments , serializer: CommentSerializer
  attributes :id , :name , :title , :desc 
end


now i will add and remove this changes 
