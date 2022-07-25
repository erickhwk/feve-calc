# frozen_string_literal: true

# Pages Controller
class PagesController < ApplicationController
  def index
    heart_diagnosis = HeartDiagnosisService.new(heart_params)
    @heart_data = { diastole_volume: heart_diagnosis.diastole,
                    sistole_diameter: heart_diagnosis.sistole,
                    feve: heart_diagnosis.feve }
  end

  private

  def heart_params
    return default_heart_params unless params[:stats]

    params.require(:stats).permit(:diastole, :sistole)
  end

  def default_heart_params
    { diastole: 0, sistole: 0 }
  end
end
