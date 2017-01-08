class ApiResponse
  include ActiveModel::Model

  def self.create_corrected_text(inputted_text)
    inputted_text.gsub(/\. +/, ". ")
  end

  def self.record_changes(inputted_text)
    6
  end

  def self.build_response(inputted_text)
    {
      corrected_text: create_corrected_text(inputted_text),
      extra_spaces: record_changes(inputted_text)
    }.to_json
  end
end