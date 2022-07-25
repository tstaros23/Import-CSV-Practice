class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def import
    data = Group.import(params[:file])
    redirect_to groups_path
  end
end
