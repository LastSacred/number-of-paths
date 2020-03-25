class PathCounter
  attr_reader :results

  def initialize(input)
    @input = input
    parse_test_cases
    count_paths_for_cases
    @results = format_results
  end

  private

  def parse_test_cases
    test_cases = @input
    test_cases = test_cases.split("\n")
    test_cases.shift

    @test_cases = test_cases.map { |test_case| test_case.split.map(&:to_i) }
  end

  def format_results
    @path_counts.join("\n")
  end

  def count_paths_for_cases
    @path_counts = @test_cases.map do |test_case|
      Matrix.new(test_case).path_count
    end
  end
end