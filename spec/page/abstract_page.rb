#
# This class not contains elements.
# Expected not be instantiated.
#
class AbstractPage
  attr_reader :driver

  #  -  -  -  -  -  -  -  -  -  -
  # Element class constants (used in locators)
  View    = 'android.widget.TextView'
  Icon    = 'android.widget.ImageView'
  Block   = 'android.widget.LinearLayout'
  Switch  = 'android.widget.Switch'
  Dropdown= 'android.widget.Spinner'
  Button  = 'android.widget.Button'
  Input   = 'android.widget.EditText'

  # -  -  -  -  -  -  -  -  -  -
  # Text constants
  WiFi    = "Wi\u2011Fi" # there's non-breaking hyphen

  # -  -  -  -  -  -  -  -  -  -  -
  # Exception Constants
  NoElement = Selenium::WebDriver::Error::NoSuchElementError


  def initialize(driver)
    @driver = driver
  end
end