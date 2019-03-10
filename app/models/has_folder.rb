class HasFolder < ApplicationRecord
  belongs_to :category
  belongs_to :archive
end
