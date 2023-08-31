class WeddingsController < ApplicationController
  def show
  end

  def sitting_plan
    @wedding = Wedding.find(params[:id])
    @guests = @wedding.guests
    @assigned_guests = @guests.select do |guest|
      !guest.guest_desks.empty?
    end
    @pending_guests = @guests - @assigned_guests
  end
end
