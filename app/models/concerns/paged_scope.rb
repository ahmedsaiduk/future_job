module PagedScope
  def self.extended(base)
    base.scope :pagination, lambda { |page: 0, per_page: 7|
      base.limit( per_page.to_i ).offset( per_page.to_i * page.to_i )
    }
  end
end
