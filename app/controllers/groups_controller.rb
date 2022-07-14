class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def import
    Group.import(params[:file])
    redirect_to groups_path, notice: "Groups Added Successfully"
  end
end
