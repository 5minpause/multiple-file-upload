class Upload < ActiveRecord::Base
  has_attached_file :uploaded_file, styles: { original: "4000x4000>", large: "1500x1500>", medium: "300x300>", small: "200x200>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :uploaded_file, 
  content_type: [
  "image/jpg", 
  "image/jpeg", 
  "image/png", 
  "image/gif"]
end