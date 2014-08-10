class Project < ActiveRecord::Base
  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :categories

  has_many_images :pictures

  active_admin_translates :title, :subtitle, :equipe, :description, :date do
      has_seo_meta :title
  end
end

