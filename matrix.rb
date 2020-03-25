class Matrix
  attr_reader :path_count

  def initialize(test_case)
    @m = test_case[0]
    @n = test_case[1]
    @path_count = 0
    path_from(1,1)
  end

  private

  def path_from(m_at, n_at)
    return @path_count += 1 if m_at == @m && n_at == @n
    path_from(m_at + 1, n_at) if m_at < @m
    path_from(m_at, n_at + 1) if n_at < @n
  end
end