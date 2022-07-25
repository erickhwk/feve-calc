class HeartDiagnosisService

  attr_accessor :diastole, :sistole, :feve

  def initialize(**params)
    params.symbolize_keys!
    @diastole = diastole_volume(params[:diastole].to_f)
    @sistole = sistole_volume(params[:sistole].to_f)
    @feve = feve_calculation
  end

  def diastole_volume(diastole_diameter)
    (7 / (2.4 + diastole_diameter)) * diastole_diameter**3
  end

  def sistole_volume(sistole_diameter)
    (7 / (2.4 + sistole_diameter)) * sistole_diameter**3
  end

  def feve_calculation
    calc = (diastole - sistole) / diastole

    return '' if calc.nan?

    (calc * 100).to_i
  end
end
