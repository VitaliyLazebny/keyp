require_relative 'abstract_page'

class ConfigureWifiPage < AbstractPage
  def saved_networks
    @driver.text 'Saved networks'
  end
end