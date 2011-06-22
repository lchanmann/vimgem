require 'rbconfig'

module Vimgem
  extend self

  def browse(gem)
    return unless gem
    spec = get_gemspec(gem)
    exec_vim spec.full_gem_path if spec
  end

  def get_gemspec(gem)
    matches = Gem.source_index.find_name(gem)
    matches.first
  end

  def exec_vim(path)
    case Config::CONFIG['target_os'].to_sym
    when :linux
      `gvim #{path}`
    end
  end
end
