class JournalSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content
end
