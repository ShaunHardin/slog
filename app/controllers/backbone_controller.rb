class BackboneController < ApplicationController
  before_filter :authenticate_user!, only: :index

  def index
    render text: nil, layout: 'backbone'
  end
end
