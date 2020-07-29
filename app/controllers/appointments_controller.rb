class AppointmentsController < ApplicationController
    

    def index
        appointment = Appointment.all 
        render json: appointment
    end
    
    def create 
       user = User.first
       photographer = Photographer.first

        appointment = Appointment.create(
            date: params[:date],
            message: params[:message],
            user: user,
            photographer: photographer
        )
        render json: appointment
    end 

    def update
        appointment = Appointment.find(params[:id])
        appointment.update(appointment_params)
        render json: appointment
    end
    
    def destroy
        appointment = Appointment.find(params[:id])
        appointment.destroy
        render json: appointment
    end

    private

    def appointment_params
        params.require(:appointment).permit(:date, :notes, :id)
    end
end


