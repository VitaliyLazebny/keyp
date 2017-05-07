require File.expand_path('spec/spec_helper')

describe 'WiFi page' do
  before do
    @page = SettingsPage.new @driver
    @page.wifi_title.click
    @page = WiFiPage.new @driver
  end

  it 'Have a title' do
    expect(@page.header.text).to match WiFiPage::WiFi
  end

  it 'is On' do
    expect(@page.switcher.text).to match 'On'
    expect{@page.turn_on_text}.to raise_error(WiFiPage::NoElement)

    expect(@page.network_title('WiredSSID').text).to match('WiredSSID')
    expect(@page.network_status('WiredSSID').text).to match('Connected')
    expect(@page.network_status('WiredSSID')).to be_truthy
  end

  it 'can be turned Off' do
    @page.switcher.click

    expect(@page.switcher.text).to match 'Off'
    expect(@page.turn_on_text).to be_truthy

    expect{@page.network_title('WiredSSID').text}.to raise_error(WiFiPage::NoElement)
    expect{@page.network_title('WiredSSID').text}.to raise_error(WiFiPage::NoElement)
    expect{@page.network_title('WiredSSID').text}.to raise_error(WiFiPage::NoElement)
  end

  it 'can be turned on' do
    @page.switcher.click

    expect(@page.switcher.text).to match 'On'
    expect{@page.turn_on_text}.to raise_error(WiFiPage::NoElement)

    expect(@page.network_title('WiredSSID').text).to match('WiredSSID')
    expect(@page.network_status('WiredSSID').text).to match('Connected')
    expect(@page.network_status('WiredSSID')).to be_truthy
  end
end