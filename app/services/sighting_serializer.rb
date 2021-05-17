class SightingSerializer
    def initialize(sighting_object)
        @sighting = sighting_object
    end
    def to_serialized_json
        options = {
            include: {
                bird: {
                    only: [:name, :species]
                }
            }, 
            excempt: [:updated_at],
        }
        @sighting.to_json(options)
        # @sighting.to_json(:include => {
        #     :bird => {:onlu=> [:name, :species]},
        #     :location => {:only => [:latitude, :longitude]}
        #     }, :except => [:updated_at])
    end
end