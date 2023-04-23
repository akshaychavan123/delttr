class PostSerializer < ActiveModel::Serializer
  has_many :comments , serializer: CommentSerializer
  attributes :id , :name , :title , :desc  :tata , :goodbyegit status
end


this is changes in another branch

changes for two commit remove



last changes
okay this is finally last