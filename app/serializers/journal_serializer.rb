class JournalSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :date
end
