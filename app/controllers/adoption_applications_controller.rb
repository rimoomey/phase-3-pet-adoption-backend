# frozen_string_literal: true

# router for adoption_applications table
class AdoptionApplicationsController < ApplicationController
  get '/adoption-applications' do
    AdoptionApplication.all.to_json
  end

  get '/adoption-applications/:id' do
    AdoptionApplication.find(params[:id]).to_json
  end

  post '/adoption-applications' do
    AdoptionApplication.create(params).to_json
  end

  patch '/adoption-applications/:id' do
    adoption = AdoptionApplication.find(params[:id])
    adoption.update(params)
    adoption.to_json
  end

  delete '/adoption-applications/:id' do
    AdoptionApplication.find(params[:id]).destroy
  end
end