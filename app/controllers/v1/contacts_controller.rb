module V1
  class ContactsController < ApplicationController
    def create
      ::Contacts::Mailer.contact_from(params[:name], params[:email], params[:content]).deliver
      render json: { redirect_url: '/thanks' }, status: :ok
    rescue => e
      render json: { errors: e.message }, status: :unprocessable_entity
    end
  end
end
