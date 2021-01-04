class Event < ApplicationRecord
  enum distance: %i[k5 k10 k15 half marathon other]
end
