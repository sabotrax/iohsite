module IoHHelpers

  def link_to_citizen(handle="croberts68", *options, **named_options)
    if options.empty?
      text = handle
    else
      text = options.shift
    end
    link_to(text, "https://robertsspaceindustries.com/citizens/#{handle}", named_options)
  end

end
