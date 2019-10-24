class CoordinatorController < ApplicationController
  def index
    @coordinators = Coordinator.all
  end
end
