require 'rubygems'
require 'wifi_location'
require 'open-uri'

class Geolocator

  def get_wifilocation
    $location = WiFiLocation.location
    $latitude = $loc['latitude']
    $longitude = $loc['longitude']
    $address = $loc['address']
  end

  def set_url(url)
    $url = "https://www.googleapis.com/geolocation/v1/geolocate?key=${API_KEY}"
  end

  def query_api
    $response = open($url)
  end

  def parse_response(content)
    p $response.content
  end

end

geolocator = Geolocator.new
geolocator.get_wifilocation
geolocation.set_url
geolocation.query_api
