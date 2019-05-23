class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp = Faraday.get'https://api.foursquare.com/v2/venues/search' do |req|
        req.params['client_id'] = "JIDVQAHARO1PJVRCWUCDFKGNDZHARNDI4TUIHOIH2WS2CSQX"
        req.params['client_secret'] = "24KJ0HQXLXGBQGS0XDM4KZAX00PY2ZJ1Q4CRGW0YRIGB1OZ1" 
        req.params['v'] = '20160201'
        req.params['near'] = params[:zipcode]
        req.params['query'] = 'coffee shop'
      end 
    end 
    _renderers 
  end
