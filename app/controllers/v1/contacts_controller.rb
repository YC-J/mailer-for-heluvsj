module V1
  class ContactsController < ApplicationController
    def create
      ::Contacts::Mailer.contact_from(params[:name], params[:email], params[:content]).deliver
    end
  end
end
