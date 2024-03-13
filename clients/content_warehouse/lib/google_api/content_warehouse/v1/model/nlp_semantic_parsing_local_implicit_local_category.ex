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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalImplicitLocalCategory do
  @moduledoc """
  Flags indiciating the specific implicit intent, e.g. dining, travel, etc. Next ID = 13

  ## Attributes

  *   `airport` (*type:* `boolean()`, *default:* `nil`) - 
  *   `bank` (*type:* `boolean()`, *default:* `nil`) - 
  *   `chargingStation` (*type:* `boolean()`, *default:* `nil`) - 
  *   `gasStation` (*type:* `boolean()`, *default:* `nil`) - 
  *   `gym` (*type:* `boolean()`, *default:* `nil`) - 
  *   `hairSalon` (*type:* `boolean()`, *default:* `nil`) - 
  *   `hospital` (*type:* `boolean()`, *default:* `nil`) - 
  *   `hotel` (*type:* `boolean()`, *default:* `nil`) - 
  *   `laundromat` (*type:* `boolean()`, *default:* `nil`) - 
  *   `movieTheater` (*type:* `boolean()`, *default:* `nil`) - 
  *   `postOffice` (*type:* `boolean()`, *default:* `nil`) - 
  *   `spa` (*type:* `boolean()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :airport => boolean() | nil,
          :bank => boolean() | nil,
          :chargingStation => boolean() | nil,
          :gasStation => boolean() | nil,
          :gym => boolean() | nil,
          :hairSalon => boolean() | nil,
          :hospital => boolean() | nil,
          :hotel => boolean() | nil,
          :laundromat => boolean() | nil,
          :movieTheater => boolean() | nil,
          :postOffice => boolean() | nil,
          :spa => boolean() | nil
        }

  field(:airport)
  field(:bank)
  field(:chargingStation)
  field(:gasStation)
  field(:gym)
  field(:hairSalon)
  field(:hospital)
  field(:hotel)
  field(:laundromat)
  field(:movieTheater)
  field(:postOffice)
  field(:spa)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalImplicitLocalCategory do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalImplicitLocalCategory.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalImplicitLocalCategory do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
