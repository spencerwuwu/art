require "administrate/field/base"

class ImageField < Administrate::Field::Base
  def to_s
    data&.url or ""
  end
end
