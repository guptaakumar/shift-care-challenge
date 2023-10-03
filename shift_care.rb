require 'thor'
class ShiftCare < Thor
  require 'json'

  desc "find_by_name NAME", "find_by_name to NAME"
  def find_by_name params_name
    result = []
    file = open("clients.json")
    clients_json = file.read
    json_hash = JSON.parse(clients_json)
    result << json_hash.select {|h| h['full_name'].match?(params_name)}
    result
    # puts result
  end

  desc "find_by_email EMAIL", "find_by_email to EMAIL"
  def find_by_email params_email
    email_output = []
    file = open("clients.json")
    clients_json = file.read
    json_hash = JSON.parse(clients_json)
    email_output << json_hash.select {|h| h['email'].match?(params_email)}
    email_output
    # puts email_output
  end
end

ShiftCare.start(ARGV)
