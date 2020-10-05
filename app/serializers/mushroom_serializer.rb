class MushroomSerializer < ActiveModel::Serializer
    attributes  :id, :latin_name, :common_name, :confused_with, :habitat, :region, :poisonous, :img_url
    def common_name
      JSON.parse(object.common_name)
    end
  
    def confused_with
      JSON.parse(object.confused_with)
    end
  
    def region
      JSON.parse(object.region)
    end
  end