class Project < ActiveRecord::Base
  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :categories

  has_many_images :pictures
  has_seo_meta :title

  active_admin_translates :title, :subtitle, :equipe, :description, :date
end

