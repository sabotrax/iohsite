module IoHHelpers

  def rsi_citizen_link_to(handle="croberts68", *moniker)
    moniker = handle unless moniker.shift
    link_to(moniker, "https://robertsspaceindustries.com/citizens/#{handle}")
  end

end
