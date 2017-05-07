require File.expand_path('spec/spec_helper')

describe 'Add network', %q(
  To be able use network
  i want to add it
) do

  before(:all) do
    @network = 'Test Network'

    add_network(@network)
    open_saved_networks
  end

  it 'allow user see added network' do
    expect(@page.network(@network).text).to match @network
  end

  it 'allow user see network details on pop-up' do
    @page.network(@network).click

    expect(@page.network(@network).text).to match @network

    expect(@page.security_label.text).to match 'Security'
    expect(@page.security_value.text).to match 'None'

    @page.cancel.click

    expect(@page.network(@network).text).to match @network
  end

  it 'allow user remove network' do
    expect(@page.network(@network).text).to match @network

    @page.network(@network).click
    @page.forget.click

    expect{@page.network(@network)}.to raise_error(SavedNetworksPage::NoElement)
  end

end

