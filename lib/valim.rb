module Kernel
  def confirm?
    true
  end

  def deny?
    false
  end

  def confirm
    !!self
  end

  def deny
    false
  end

  def confirm_deny?
    confirm?
  end
end

module Valim
  module Denied
    def confirm?
      false
    end

    def deny?
      true
    end
  end
end

class NilClass
  include Valim::Denied
end

class FalseClass
  include Valim::Denied

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
