FactoryBot.define do
  factory :image do
    image_url {Rack::Test::UploadedFile.new(File.join("#{Rails.root}/public/images/no_image.jpg"))}
    item
  end
end