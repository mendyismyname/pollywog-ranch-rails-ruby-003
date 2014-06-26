class Tadpole < ActiveRecord::Base
  belongs_to :frog

  def evolve
    Frog.create(name: name, color: color, pond: frog.pond)
    destroy
    frog.pond.frogs.find(frog.id).tadpoles.find(id).frog.color
  end
end