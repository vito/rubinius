# -*- encoding: us-ascii -*-

class Symbol
  def self.===(obj)
    Rubinius.primitive :symbol_s_eqq
    super
  end

  def index
    Rubinius.primitive :symbol_index
    raise PrimitiveFailure, "Symbol#index failed."
  end

  def is_ivar?
    Rubinius.primitive :symbol_is_ivar
    raise PrimitiveFailure, "Symbol#is_ivar failed."
  end

  def is_cvar?
    Rubinius.primitive :symbol_is_cvar
    raise PrimitiveFailure, "Symbol#is_cvar failed."
  end

  def is_constant?
    Rubinius.primitive :symbol_is_constant
    raise PrimitiveFailure, "Symbol#is_constant failed."
  end
end
