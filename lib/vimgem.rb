module Vimgem
  def self.browse(gem_name)
    matches = Gem.source_index.find_name(gem_name)
    exit if matches.empty?
    spec = matches.first
    `gvim #{spec.full_gem_path}`
  end
end
