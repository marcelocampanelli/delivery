# frozen_string_literal: true

class Api::V2::OrdersController < ApplicationController
  def create
    make_parse
  end

  private

  def make_parse
    @order = Parse::Order.new.run(params)
  end
end
