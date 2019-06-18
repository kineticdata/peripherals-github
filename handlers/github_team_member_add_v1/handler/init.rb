require File.expand_path(File.join(File.dirname(__FILE__), 'dependencies'))

class GithubTeamMemberAddV1
  def initialize(input)
    # Set the input document attribute
    @input_document = REXML::Document.new(input)
    
    # Store the info values in a Hash of info names to values.
    @info_values = {}
    REXML::XPath.each(@input_document,"/handler/infos/info") { |item|
      @info_values[item.attributes['name']] = item.text
    }
    
    # Retrieve all of the handler parameters and store them in a hash attribute
    # named @parameters.
    @parameters = {}
    REXML::XPath.match(@input_document, 'handler/parameters/parameter').each do |node|
      @parameters[node.attribute('name').value] = node.text.to_s
    end
  end
  
  def execute()
    username = @info_values['client_username']
    password = @info_values['client_token']
    org_name = @parameters['organization_name']
    team_name = @parameters['team_name']
    new_members = @parameters['new_members']
    
    # Get authorized client
    client = Octokit::Client.new(:login => username, :oauth_token => password)
    
    # Get teams of clients organization
    teams = client.organization_teams(org_name)
    
    # Get the id of the target team
    id = nil
    teams.each do | t |
      if t.name == team_name
        id = t.id
        break
      end
    end  
    
    # Add each new member to team
    new_members.split(/\s*,\s*/).each do | member |
        client.add_team_member(id,member)
    end
    
    <<-RESULTS
    <results/>
    RESULTS
  end
  
  # This is a template method that is used to escape results values (returned in
  # execute) that would cause the XML to be invalid.  This method is not
  # necessary if values do not contain character that have special meaning in
  # XML (&, ", <, and >), however it is a good practice to use it for all return
  # variable results in case the value could include one of those characters in
  # the future.  This method can be copied and reused between handlers.
  def escape(string)
    # Globally replace characters based on the ESCAPE_CHARACTERS constant
    string.to_s.gsub(/[&"><]/) { |special| ESCAPE_CHARACTERS[special] } if string
  end
  # This is a ruby constant that is used by the escape method
  ESCAPE_CHARACTERS = {'&'=>'&amp;', '>'=>'&gt;', '<'=>'&lt;', '"' => '&quot;'}
end
