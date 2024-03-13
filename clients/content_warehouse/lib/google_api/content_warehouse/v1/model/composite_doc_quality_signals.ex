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

defmodule GoogleApi.ContentWarehouse.V1.Model.CompositeDocQualitySignals do
  @moduledoc """
  Note: This is a misleading name as of 2022/10/14. The field is still set and has meaningful data, but no longer holds quality signals. All the data are freshness-related and they're not particularly sensitive.

  ## Attributes

  *   `lastSignificantUpdate` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityTimebasedLastSignificantUpdate.t`, *default:* `nil`) - Contains a date used for the "Date Last Modified" toolbelt restrict mode. Note: this date is a combined date and is different from the pure shingle-based signal stored in contentage.last_significant_update field.
  *   `pagetype` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityTimebasedPageType.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lastSignificantUpdate =>
            GoogleApi.ContentWarehouse.V1.Model.QualityTimebasedLastSignificantUpdate.t() | nil,
          :pagetype => GoogleApi.ContentWarehouse.V1.Model.QualityTimebasedPageType.t() | nil
        }

  field(:lastSignificantUpdate,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityTimebasedLastSignificantUpdate
  )

  field(:pagetype, as: GoogleApi.ContentWarehouse.V1.Model.QualityTimebasedPageType)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.CompositeDocQualitySignals do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.CompositeDocQualitySignals.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.CompositeDocQualitySignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
