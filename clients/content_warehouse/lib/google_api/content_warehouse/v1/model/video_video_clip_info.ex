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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoVideoClipInfo do
  @moduledoc """
  VideoClipInfo : meta information extracted from video file Next id: 26

  ## Attributes

  *   `artist` (*type:* `String.t`, *default:* `nil`) - Lists the artist of the original subject of the file.
  *   `audioVendorId` (*type:* `String.t`, *default:* `nil`) - Audio vendor ID
  *   `author` (*type:* `String.t`, *default:* `nil`) - Different containers use different video clip info. The following fields include info from popular formats: AVI, MOV, and WMV.
  *   `comment` (*type:* `String.t`, *default:* `nil`) - 
  *   `commissioned` (*type:* `String.t`, *default:* `nil`) - Lists the name of the person or organization that commissioned the subject of the file.
  *   `copyright` (*type:* `String.t`, *default:* `nil`) - Records the copyright information for the file.
  *   `digitizationTime` (*type:* `String.t`, *default:* `nil`) - 
  *   `director` (*type:* `String.t`, *default:* `nil`) - 
  *   `engineer` (*type:* `String.t`, *default:* `nil`) - The engineer who worked on the file.
  *   `geolocation` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoVideoGeoLocation.t`, *default:* `nil`) - Optional geo-location information in WGS 84.
  *   `info` (*type:* `String.t`, *default:* `nil`) - 
  *   `keywords` (*type:* `String.t`, *default:* `nil`) - Provides a list of keywords that refer to the file or subject of the file.
  *   `make` (*type:* `String.t`, *default:* `nil`) - The camera make such as Apple, Samsung etc.
  *   `medium` (*type:* `String.t`, *default:* `nil`) - Describes the original subject of the file.
  *   `metadata` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoClipInfo.t)`, *default:* `nil`) - Container level metadata
  *   `model` (*type:* `String.t`, *default:* `nil`) - The camera model such as iPhone7 or Pixel, etc.
  *   `performer` (*type:* `String.t`, *default:* `nil`) - 
  *   `producer` (*type:* `String.t`, *default:* `nil`) - 
  *   `requirements` (*type:* `String.t`, *default:* `nil`) - 
  *   `software` (*type:* `String.t`, *default:* `nil`) - Identifies the name of the software packages used to create the file.
  *   `sourceProvider` (*type:* `String.t`, *default:* `nil`) - Identifies the name of the person or organization who supplied the original subject of the file.
  *   `subject` (*type:* `String.t`, *default:* `nil`) - Describes the contents of the file.
  *   `technician` (*type:* `String.t`, *default:* `nil`) - Identifies the technician who digitized the subject file.
  *   `title` (*type:* `String.t`, *default:* `nil`) - 
  *   `videoVendorId` (*type:* `String.t`, *default:* `nil`) - Video vendor ID
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :artist => String.t() | nil,
          :audioVendorId => String.t() | nil,
          :author => String.t() | nil,
          :comment => String.t() | nil,
          :commissioned => String.t() | nil,
          :copyright => String.t() | nil,
          :digitizationTime => String.t() | nil,
          :director => String.t() | nil,
          :engineer => String.t() | nil,
          :geolocation => GoogleApi.ContentWarehouse.V1.Model.VideoVideoGeoLocation.t() | nil,
          :info => String.t() | nil,
          :keywords => String.t() | nil,
          :make => String.t() | nil,
          :medium => String.t() | nil,
          :metadata => list(GoogleApi.ContentWarehouse.V1.Model.VideoClipInfo.t()) | nil,
          :model => String.t() | nil,
          :performer => String.t() | nil,
          :producer => String.t() | nil,
          :requirements => String.t() | nil,
          :software => String.t() | nil,
          :sourceProvider => String.t() | nil,
          :subject => String.t() | nil,
          :technician => String.t() | nil,
          :title => String.t() | nil,
          :videoVendorId => String.t() | nil
        }

  field(:artist)
  field(:audioVendorId)
  field(:author)
  field(:comment)
  field(:commissioned)
  field(:copyright)
  field(:digitizationTime)
  field(:director)
  field(:engineer)
  field(:geolocation, as: GoogleApi.ContentWarehouse.V1.Model.VideoVideoGeoLocation)
  field(:info)
  field(:keywords)
  field(:make)
  field(:medium)
  field(:metadata, as: GoogleApi.ContentWarehouse.V1.Model.VideoClipInfo, type: :list)
  field(:model)
  field(:performer)
  field(:producer)
  field(:requirements)
  field(:software)
  field(:sourceProvider)
  field(:subject)
  field(:technician)
  field(:title)
  field(:videoVendorId)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoVideoClipInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoVideoClipInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoVideoClipInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end