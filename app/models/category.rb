class Category < ActiveRecord::Base
  has_and_belongs_to_many :projects

  active_admin_translates :name
end

