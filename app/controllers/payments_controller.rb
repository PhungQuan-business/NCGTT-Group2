# app/controllers/payments_controller.rb
class PaymentsController < ApplicationController
    def new
      @payment = Payment.new
    end
  
    def create
      @payment = Payment.new(payment_params)
      if @payment.save
        # Xử lý khi thanh toán thành công
      else
        render 'new'
      end
    end
  
    private
  
    def payment_params
      params.require(:payment).permit(:amount, :card_number, :expiration_date, :cvv)
    end
  end
  