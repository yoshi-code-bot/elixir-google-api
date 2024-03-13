# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalBusinessType do
  @moduledoc """
  A high-level categorization of business types. Used for location elements that are either BUSINESS_NAME or BUSINESS_CATEGORY. The business types roughly correspond to QRef collections and should be interpreted broadly. E.g., hotel also include motels, youth hostels, and guest houses; restaurants includes bars and cafes, etc. Business types can be populated by QRef collections; other population is done by grammar categories from local_categories.grammar. It is expected that some business organizations will match more than one business type. E.g., Safeway is both a grocery store and a pharmacy. Next ID: 43 NOTE(oksana): LocalCategoryReliable grammar over-rides a few business type queries to include hyper_reliable location element. If you change this, please make sure that LocalCategoryReliable grammar reflects this too. LINT.IfChange

  ## Attributes

  *   `gasStation` (*type:* `boolean()`, *default:* `nil`) - 
  *   `airline` (*type:* `boolean()`, *default:* `nil`) - 
  *   `parking` (*type:* `boolean()`, *default:* `nil`) - 
  *   `petStore` (*type:* `boolean()`, *default:* `nil`) - 
  *   `transitLine` (*type:* `boolean()`, *default:* `nil`) - A particular line in a transit system, e.g., "3 train", "Red Line", "Cirle Line", etc.
  *   `departmentStore` (*type:* `boolean()`, *default:* `nil`) - 
  *   `bank` (*type:* `boolean()`, *default:* `nil`) - 
  *   `cuisineGcid` (*type:* `list(String.t)`, *default:* `nil`) - If the element implies a cuisine type then we include the gcid string when available. Currently this happens for BUSINESS_CATEGORY type. The field is repeated to model categories like "mandarin buffet restaurant" with multiple cuisine gcid's: mandarin_restaurant and buffet_restaurant.
  *   `hospital` (*type:* `boolean()`, *default:* `nil`) - 
  *   `foodPantry` (*type:* `boolean()`, *default:* `nil`) - 
  *   `toyStore` (*type:* `boolean()`, *default:* `nil`) - 
  *   `transitStation` (*type:* `boolean()`, *default:* `nil`) - The different types of transit station business types will be used to figure out which vehicle types to use when querying Tripfinder's SearchStations service. The stations in that backend seem to be divided into HEAVY_RAIL, SUBWAY, and TRAM. There isn't a very reliable division between intercity rail and commuter rail -- Amtrak, LIRR, PATH, and NJ Transit are all classified as HEAVY_RAIL. That's why in these types we make a distinction between train and subway, and not train and muni_rail, (unlike TransitMode in the TravelAction proto).
  *   `hairdresser` (*type:* `boolean()`, *default:* `nil`) - 
  *   `qrefTransitStation` (*type:* `boolean()`, *default:* `nil`) - This is used for transit stations annotated by QRef. The transit_station business_type above is only used for business categories, and therefore is used downstream to find nearby stations rather than a particular station, and so cannot be present in a Location that is a specific station from QRef. For these cases, this business_type is used instead. e.g. "grand central" "millbrae station" "union station" will have business_type qref_transit_station
  *   `busStop` (*type:* `boolean()`, *default:* `nil`) - 
  *   `transitOperator` (*type:* `boolean()`, *default:* `nil`) - Operator of a transit line, e.g., "MTA", "BART", "CTA", etc.
  *   `sportStore` (*type:* `boolean()`, *default:* `nil`) - 
  *   `restaurant` (*type:* `boolean()`, *default:* `nil`) - Also bars and cafes
  *   `venue` (*type:* `boolean()`, *default:* `nil`) - Stadiums, theaters, cinemas, etc.
  *   `retail` (*type:* `boolean()`, *default:* `nil`) - 
  *   `electronicStore` (*type:* `boolean()`, *default:* `nil`) - 
  *   `hardwareStore` (*type:* `boolean()`, *default:* `nil`) - 
  *   `drugDropOff` (*type:* `boolean()`, *default:* `nil`) - 
  *   `bikeSharingStation` (*type:* `boolean()`, *default:* `nil`) - 
  *   `clothingStore` (*type:* `boolean()`, *default:* `nil`) - 
  *   `subwayStation` (*type:* `boolean()`, *default:* `nil`) - 
  *   `pharmacy` (*type:* `boolean()`, *default:* `nil`) - 
  *   `emergency` (*type:* `String.t`, *default:* `nil`) - This field is used to determine the emergency type of the element, which is specified by the grammar parse in (http://cs/file:googledata/localsearch/quality/grammar/local_patterns.asciipb). e.g. "coronavirus_treatment_locations" TODO(b/151330576) Deprecate the emergency field and replace with normal triggering.
  *   `shoppingCenter` (*type:* `boolean()`, *default:* `nil`) - 
  *   `hotel` (*type:* `boolean()`, *default:* `nil`) - Also youth hostels, guest houses, etc.
  *   `airport` (*type:* `boolean()`, *default:* `nil`) - 
  *   `school` (*type:* `boolean()`, *default:* `nil`) - Pre-k to high school
  *   `soupKitchen` (*type:* `boolean()`, *default:* `nil`) - 
  *   `university` (*type:* `boolean()`, *default:* `nil`) - Also colleges
  *   `groceryStore` (*type:* `boolean()`, *default:* `nil`) - 
  *   `electricVehicleChargingStation` (*type:* `boolean()`, *default:* `nil`) - 
  *   `vehicleType` (*type:* `list(String.t)`, *default:* `nil`) - All of the vehicle types serviced by this business or business category. e.g. VEHICLE_TYPE_RAIL and VEHICLE_TYPE__BUS for "transit stop". This allows downstream to serve different result types for transit station categories in different languages. e.g. In en-US "train station" seeks both railway station and subway station results. But the equivalent word in French/Italian/German seeks only railway stations.
  *   `trainStation` (*type:* `boolean()`, *default:* `nil`) - 
  *   `telecom` (*type:* `boolean()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gasStation => boolean() | nil,
          :airline => boolean() | nil,
          :parking => boolean() | nil,
          :petStore => boolean() | nil,
          :transitLine => boolean() | nil,
          :departmentStore => boolean() | nil,
          :bank => boolean() | nil,
          :cuisineGcid => list(String.t()) | nil,
          :hospital => boolean() | nil,
          :foodPantry => boolean() | nil,
          :toyStore => boolean() | nil,
          :transitStation => boolean() | nil,
          :hairdresser => boolean() | nil,
          :qrefTransitStation => boolean() | nil,
          :busStop => boolean() | nil,
          :transitOperator => boolean() | nil,
          :sportStore => boolean() | nil,
          :restaurant => boolean() | nil,
          :venue => boolean() | nil,
          :retail => boolean() | nil,
          :electronicStore => boolean() | nil,
          :hardwareStore => boolean() | nil,
          :drugDropOff => boolean() | nil,
          :bikeSharingStation => boolean() | nil,
          :clothingStore => boolean() | nil,
          :subwayStation => boolean() | nil,
          :pharmacy => boolean() | nil,
          :emergency => String.t() | nil,
          :shoppingCenter => boolean() | nil,
          :hotel => boolean() | nil,
          :airport => boolean() | nil,
          :school => boolean() | nil,
          :soupKitchen => boolean() | nil,
          :university => boolean() | nil,
          :groceryStore => boolean() | nil,
          :electricVehicleChargingStation => boolean() | nil,
          :vehicleType => list(String.t()) | nil,
          :trainStation => boolean() | nil,
          :telecom => boolean() | nil
        }

  field(:gasStation)
  field(:airline)
  field(:parking)
  field(:petStore)
  field(:transitLine)
  field(:departmentStore)
  field(:bank)
  field(:cuisineGcid, type: :list)
  field(:hospital)
  field(:foodPantry)
  field(:toyStore)
  field(:transitStation)
  field(:hairdresser)
  field(:qrefTransitStation)
  field(:busStop)
  field(:transitOperator)
  field(:sportStore)
  field(:restaurant)
  field(:venue)
  field(:retail)
  field(:electronicStore)
  field(:hardwareStore)
  field(:drugDropOff)
  field(:bikeSharingStation)
  field(:clothingStore)
  field(:subwayStation)
  field(:pharmacy)
  field(:emergency)
  field(:shoppingCenter)
  field(:hotel)
  field(:airport)
  field(:school)
  field(:soupKitchen)
  field(:university)
  field(:groceryStore)
  field(:electricVehicleChargingStation)
  field(:vehicleType, type: :list)
  field(:trainStation)
  field(:telecom)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalBusinessType do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalBusinessType.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalBusinessType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
