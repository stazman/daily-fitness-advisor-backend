class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :middle_name, :username, :email
end
