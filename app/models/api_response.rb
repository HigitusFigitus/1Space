class ApiResponse

  def self.create_corrected_text(inputted_text)
    inputted_text.gsub(/\. +/, ". ")
  end

  def self.record_changes(inputted_text)
    replaced_spaces_counter = 0
    inputted_text.scan(/\. +/).each do |text_segment|
      if text_segment != ". "
        replaced_spaces_counter += text_segment.length - 2
      end
    end
    replaced_spaces_counter
  end

  def self.build_response(inputted_text)
    {
      corrected_text: create_corrected_text(inputted_text),
      extra_spaces: record_changes(inputted_text)
    }.to_json
  end
end