class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :small do
   eager
   resize_to_fit(438, 250)
   cloudinary_transformation :quality => 80
 end

 version :large do
   eager
   resize_to_fit(450, 450)
   cloudinary_transformation :quality => 80
 end
end
