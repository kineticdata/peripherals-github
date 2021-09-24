# Require the dependencies file to load the vendor libraries
require File.expand_path(File.join(File.dirname(__FILE__), 'dependencies'))

class GithubOrganizationRepoCreateV1
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
    REXML::XPath.match(@input_document, '/handler/parameters/parameter').each do |node|
      # Associate the attribute name to the String value (stripping leading and
      # trailing whitespace)
      @parameters[node.attribute('name').value] = node.text.to_s.strip
    end

    @debug_logging_enabled = ["yes","true"].include?(@info_values['enable_debug_logging'].downcase)
    @error_handling = @parameters["error_handling"]
  end

  def execute()

    # Initialize return data
    error_message = nil

    begin
      org_name = @parameters['org_name'].empty? ? @info_values['org_name'] : @parameters['org_name']
      
      if org_name.nil?
        raise StandardError.new "org_name must be defined as an info_value or a parameter."
      end

      url = "https://api.github.com/orgs/#{org_name}/repos"
      
      resource = RestClient::Resource.new(url)

      data = {name: @parameters['name'], description: @parameters['description']}

      data['private'] = true if @parameters['visibility'].downcase == "private"
      data['team_id'] = @parameters['team_id'] if !@parameters['team_id'].empty?

      puts "Calling URL https://api.github.com/orgs/#{org_name}/repos" if @debug_logging_enabled
      response = resource.post(
        data.to_json, 
        {
          content_type: :json, 
          authorization: "token #{@info_values['access_token']}"
        })
      
      results = <<-RESULTS
      <results>
        <result name="Response Body">#{escape(response.nil? ? {} : response.body)}</result>
        <result name="Handler Error Message">#{escape(error_message)}</result>
      </results>
      RESULTS
    rescue RestClient::Exception => e
      error_message = e.inspect

      results = <<-RESULTS
      <results>
        <result name="Handler Error Message">#{escape(error_message)}</result>
      </results>
      RESULTS

      # Raise the error if instructed to, otherwise will fall through to
      # return an error message.
      raise if @error_handling == "Raise Error"
    rescue StandardError::Exception => e
      error_message = e.message
      
      raise e.message if @error_handling == "Raise Error"

      results = <<-RESULTS
      <results>
        <result name="Handler Error Message">#{escape(error_message)}</result>
      </results>
      RESULTS
    end

    return results

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
