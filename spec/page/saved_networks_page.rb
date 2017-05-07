require_relative 'abstract_page'

class SavedNetworksPage < AbstractPage
  def header
    @driver.xpath(%Q(//#{View}))
  end

  def network(name)
    @driver.text name
  end

  # -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
  # Form block
  def security_label
    @driver.xpath %Q(//#{View}[@text='Security'])
  end

  def security_value
    @driver.xpath %Q(//#{View}[@text='Security']/../#{View}[2])
  end

  def forget
    @driver.button 'Forget'
  end

  def cancel
    @driver.button 'Cancel'
  end
end