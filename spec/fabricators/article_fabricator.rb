Fabricator(:article) do
  title { Faker::Lorem.sentence }
  body { Faker::Lorem.paragraphs(3).join("\n") }
end

Fabricator(:article_with_comments, :from => :article) do
  comments(:count => 3) {|article, index| Fabricate(:comment, :article => article)}
end

Fabricator(:comment) do
  body { Faker::Lorem.paragraph }
  author_name { Faker::Name.name }
end