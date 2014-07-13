require 'rubygems'

module Gem
  def self.find(dir)
    dir = File.expand_path(dir)
    gemspecs = {}
    spec_files = Dir.glob(File.join(dir, "**/*.gemspec"))
    spec_files.each do |spec_file|
      Dir.chdir(File.expand_path(File.dirname(spec_file), dir))
      spec = Gem::Specification.load(spec_file)
      if spec
        spec.normalize
        o = {}
        spec.class.attribute_names.find_all do |name|
          v = spec.instance_variable_get("@#{name}")
          o[name] = v if v
        end
        gemspecs[spec_file] = o
      end
    end
    gemspecs
  end
end
