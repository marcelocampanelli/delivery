# frozen_string_literal: true

class Api::V2::OrdersController < ApplicationController
  def create
    ActiveRecord::Base.transaction do
      run
      render json: { response: 'OK!' }
    end
  rescue ActiveRecord::RecordInvalid
    render json: { response: "Something's not right, check yours params" }
  end

  private

  def run
    make_parse
    get_token
    @sent = send_order
    create_order
  end

  def send_order
    WorkOrder::SendOrderProcessed.new.run(@token, @parse)
  end

  def get_token
    @token = WorkOrder::GetToken.new.run
  end

  def make_parse
    @parse = Parse::Main.new.run(params)
  end

  def create_order
    Create::Order.new.run(@parse)
  end
end
