module Admin
  class CategoriesController < ApplicationController
    before_action :set_category, only: :show

    def new
    end

    def create
    end

    def show; end

    private

    attr_reader :category

    def set_category
      @category = Category.find_by id: params[:id]

      redirect_to admin_categories_path if category.blank?
    end
  end
end
