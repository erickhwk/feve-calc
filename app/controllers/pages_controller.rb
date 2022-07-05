class PagesController < ApplicationController
  def index(dd: params[:dd].to_f, ds: params[:ds].to_f)
    @vd = (7 / (2.4 + dd)) * dd**3
    @vs = (7 / (2.4 + ds)) * ds**3
    calc = (@vd - @vs) / @vd
    calc.nan? ? "" : @feve = (calc*100).to_i
  end
end
