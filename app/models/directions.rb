class Directions < OpenStruct
  attr_reader :service

  def service
    @service = DirectionsService.new
    binding.pry
  end

  def origin

  end

  def destination

  end
end
