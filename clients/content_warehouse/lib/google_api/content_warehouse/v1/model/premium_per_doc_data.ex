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

defmodule GoogleApi.ContentWarehouse.V1.Model.PremiumPerDocData do
  @moduledoc """
  Per-doc data for premium documents in the Google index.

  ## Attributes

  *   `Currency` (*type:* `integer()`, *default:* `nil`) - type froogle/currency/currency.h
  *   `Date` (*type:* `String.t`, *default:* `nil`) - publishing date (seconds since 1970,
  *   `Entitlement` (*type:* `list(integer())`, *default:* `nil`) - entitlement data
  *   `IsArchival` (*type:* `boolean()`, *default:* `nil`) - True if a free document is archival in nature.
  *   `IsEntitled` (*type:* `boolean()`, *default:* `nil`) - User is entitled to see the premium content for free.
  *   `Price` (*type:* `integer()`, *default:* `nil`) - price * 100 if available
  *   `Publication` (*type:* `String.t`, *default:* `nil`) - negative values for prior dates) FP of the Premium publication name
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :Currency => integer() | nil,
          :Date => String.t() | nil,
          :Entitlement => list(integer()) | nil,
          :IsArchival => boolean() | nil,
          :IsEntitled => boolean() | nil,
          :Price => integer() | nil,
          :Publication => String.t() | nil
        }

  field(:Currency)
  field(:Date)
  field(:Entitlement, type: :list)
  field(:IsArchival)
  field(:IsEntitled)
  field(:Price)
  field(:Publication)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.PremiumPerDocData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.PremiumPerDocData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.PremiumPerDocData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end