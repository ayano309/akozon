class Category < ApplicationRecord
    has_many :products

    scope :major_categories, -> { pluck(:major_category_name).uniq }

    #scopeをクラスメソッドで書き直すとこのようになります
    # def self.major_categories
    #     pluck(:major_category_name).uniq
    #   end

end
