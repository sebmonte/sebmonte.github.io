# frozen_string_literal: true

# Liquid 4.0.3 (from github-pages) calls Object#tainted?, removed in Ruby 3.2+.
# GitHub Pages builds use its own Ruby/gems and does not load _plugins

unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end

    def taint
      self
    end

    def untaint
      self
    end
  end
end
