module Kernel
  def confirm
    !!self
  end
  alias :confirm? :confirm

  def deny
    !self
  end
  alias :deny? :deny

  def confirm_deny?
    confirm?
  end
end

class FalseClass
  def / o
    self
  end

  def inspect
    "deny"
  end

  def to_s
    "deny"
  end
end

class TrueClass
  def inspect
    "confirm"
  end

  def / o
    self
  end

  def to_s
    "confirm"
  end
end
