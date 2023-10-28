# frozen_string_literal: true

require "nokogiri"

class UpdateNumberOfStrokesService
  def handle
    list_kanji = Kanji.all

    list_kanji.each do |kj|
      svg_file_path = Rails.root.join("app/assets/images/kanji", kj.svg)
      svg_content = File.read(svg_file_path)
      doc = Nokogiri::XML(svg_content)
      paths = doc.css("path")
      paths = paths.map do |path|
        path["d"]
      end

      kj.update(number_of_strokes: paths.count)
    end
  end
end
