module Valim
  class FacepalmError < StandardError ; end

  def have_doubts
    !!yield
  end
  extend self
end

module Kernel
  def confirm
    !!self
  end
  alias :confirm? :confirm

  def deny
    !self
  end
  alias :deny? :deny

  def / o
    self
  end

  def confirm_deny?
    confirm?
  end

  def facepalm
    raise Valim::FacepalmError, "**facepalm**"
  end
end

class FalseClass
  def to_s
    "deny"
  end
end

class TrueClass
  def to_s
    "confirm"
  end
end
