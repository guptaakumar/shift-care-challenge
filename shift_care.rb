require 'thor'
class ShiftCare < Thor
  require 'json'

  desc "find_by_name NAME", "find_by_name to NAME"
  def find_by_name params_name
    file = open("clients.json")
    clients_json = file.read
    json_hash = JSON.parse(clients_json)
    puts json_hash.select {|h| h['full_name'].match?(params_name)}  
  end

  desc "find_by_email EMAIL", "find_by_email to EMAIL"
  def find_by_email params_email
    file = open("clients.json")
    clients_json = file.read
    json_hash = JSON.parse(clients_json)
    puts json_hash.select {|h| h['email'].match?(params_email)}
  end
end

ShiftCare.start(ARGV)
