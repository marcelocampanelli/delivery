# frozen_string_literal: true

class Api::V2::OrdersController < ApplicationController
  def create
    make_parse
    
    render json: @parse
  end

  private

  def make_parse
    @parse = Parse::Main.new.run(params)
    create_order
  end
  
  def create_order
    Create::Order.new.run(@parse)
  end
end
