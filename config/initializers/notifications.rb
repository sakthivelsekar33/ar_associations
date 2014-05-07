ActiveSupport::Notifications.subscribe("sql.active_record") do |_, _, _, _, details|
  if details[:sql] =~ /INSERT INTO/
    puts caller.join("\n")
    puts "*" * 50
  end
end
