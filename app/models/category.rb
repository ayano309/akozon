class Category < ApplicationRecord
    has_many :products, dependent: :destroy

    
    extend DisplayList
    scope :major_categories, -> { pluck(:major_category_name).uniq }

    #scopeをクラスメソッドで書き直すとこのようになります
    # def self.major_categories
    #     pluck(:major_category_name).uniq
    #   end

    scope :request_category, -> (category) { find(category.to_i) }
end
