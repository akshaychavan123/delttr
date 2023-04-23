class PostSerializer < ActiveModel::Serializer
  has_many :comments , serializer: CommentSerializer
  attributes :id , :name , :title , :desc  :tata , :goodbyegit status
end



this is changes in another branch

changes for two commit remo
now i will add and remove this changes 

