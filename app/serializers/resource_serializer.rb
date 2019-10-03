class ResourceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :url
end
