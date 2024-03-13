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

defmodule GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileLocation do
  @moduledoc """
  Wraps information about a user's location, if they have chosen to share it on their SearchCard.

  ## Attributes

  *   `endTime` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleTypeDate.t`, *default:* `nil`) - 
  *   `lengthOfStay` (*type:* `String.t`, *default:* `nil`) - 
  *   `place` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileEntity.t`, *default:* `nil`) - 
  *   `point` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileLocationInfo.t`, *default:* `nil`) - 
  *   `startTime` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleTypeDate.t`, *default:* `nil`) - 
  *   `type` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => GoogleApi.ContentWarehouse.V1.Model.GoogleTypeDate.t() | nil,
          :lengthOfStay => String.t() | nil,
          :place =>
            GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileEntity.t() | nil,
          :point =>
            GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileLocationInfo.t()
            | nil,
          :startTime => GoogleApi.ContentWarehouse.V1.Model.GoogleTypeDate.t() | nil,
          :type => String.t() | nil
        }

  field(:endTime, as: GoogleApi.ContentWarehouse.V1.Model.GoogleTypeDate)
  field(:lengthOfStay)
  field(:place, as: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileEntity)

  field(:point,
    as: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileLocationInfo
  )

  field(:startTime, as: GoogleApi.ContentWarehouse.V1.Model.GoogleTypeDate)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileLocation do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileLocation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
