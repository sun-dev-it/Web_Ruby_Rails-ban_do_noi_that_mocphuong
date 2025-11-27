class FactoriesController < ApplicationController
  def show
    @factory = Factory.first
  end
end
