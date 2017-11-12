class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers_by_name = Customer.order('full_name ASC')
  end

  def missing_email
    @customers_missing_email = Customer.where(email_address: [nil, ''])
  end
end
