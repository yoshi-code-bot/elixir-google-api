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

defmodule GoogleApi.AirQuality.V1.Model.LookupForecastRequest do
  @moduledoc """
  The request object of the air quality forecast API.

  ## Attributes

  *   `customLocalAqis` (*type:* `list(GoogleApi.AirQuality.V1.Model.CustomLocalAqi.t)`, *default:* `nil`) - Optional. Expresses a 'country/region to AQI' relationship. Pairs a country/region with a desired AQI so that air quality data that is required for that country/region will be displayed according to the chosen AQI. This parameter can be used to specify a non-default AQI for a given country, for example, to get the US EPA index for Canada rather than the default index for Canada.
  *   `dateTime` (*type:* `DateTime.t`, *default:* `nil`) - A timestamp for which to return the data for a specific point in time. The timestamp is rounded to the previous exact hour. Note: this will return hourly data for the requested timestamp only (i.e. a single hourly info element). For example, a request sent where the date_time parameter is set to 2023-01-03T11:05:49Z will be rounded down to 2023-01-03T11:00:00Z.
  *   `extraComputations` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Additional features that can be optionally enabled. Specifying extra computations will result in the relevant elements and fields to be returned in the response.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Optional. Allows the client to choose the language for the response. If data cannot be provided for that language the API uses the closest match. Allowed values rely on the IETF standard (default = 'en').
  *   `location` (*type:* `GoogleApi.AirQuality.V1.Model.LatLng.t`, *default:* `nil`) - Required. The latitude and longitude for which the API looks for air quality data.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Optional. The maximum number of hourly info records to return per page (default = 24).
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - Optional. A page token received from a previous forecast call. It is used to retrieve the subsequent page.
  *   `period` (*type:* `GoogleApi.AirQuality.V1.Model.Interval.t`, *default:* `nil`) - Indicates the start and end period for which to get the forecast data. The timestamp is rounded to the previous exact hour.
  *   `uaqiColorPalette` (*type:* `String.t`, *default:* `nil`) - Optional. Determines the color palette used for data provided by the 'Universal Air Quality Index' (UAQI). This color palette is relevant just for UAQI, other AQIs have a predetermined color palette that can't be controlled.
  *   `universalAqi` (*type:* `boolean()`, *default:* `nil`) - Optional. If set to true, the Universal AQI will be included in the 'indexes' field of the response (default = true).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customLocalAqis => list(GoogleApi.AirQuality.V1.Model.CustomLocalAqi.t()) | nil,
          :dateTime => DateTime.t() | nil,
          :extraComputations => list(String.t()) | nil,
          :languageCode => String.t() | nil,
          :location => GoogleApi.AirQuality.V1.Model.LatLng.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :period => GoogleApi.AirQuality.V1.Model.Interval.t() | nil,
          :uaqiColorPalette => String.t() | nil,
          :universalAqi => boolean() | nil
        }

  field(:customLocalAqis, as: GoogleApi.AirQuality.V1.Model.CustomLocalAqi, type: :list)
  field(:dateTime, as: DateTime)
  field(:extraComputations, type: :list)
  field(:languageCode)
  field(:location, as: GoogleApi.AirQuality.V1.Model.LatLng)
  field(:pageSize)
  field(:pageToken)
  field(:period, as: GoogleApi.AirQuality.V1.Model.Interval)
  field(:uaqiColorPalette)
  field(:universalAqi)
end

defimpl Poison.Decoder, for: GoogleApi.AirQuality.V1.Model.LookupForecastRequest do
  def decode(value, options) do
    GoogleApi.AirQuality.V1.Model.LookupForecastRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AirQuality.V1.Model.LookupForecastRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
