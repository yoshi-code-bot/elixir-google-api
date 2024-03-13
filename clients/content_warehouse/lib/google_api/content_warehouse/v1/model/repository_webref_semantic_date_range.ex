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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefSemanticDateRange do
  @moduledoc """
  A date range for an entity. E.g. lifespan of a person, release date of a movie, ...

  ## Attributes

  *   `confidence` (*type:* `number()`, *default:* `nil`) - Indicates how confident we are this extracted range is relevant to a document (document to be infered from context).
  *   `end` (*type:* `String.t`, *default:* `nil`) - End date extracted from the entity along end_source_property.
  *   `endSourceProperty` (*type:* `String.t`, *default:* `nil`) - KG-property that links the entity to the end date.
  *   `sourceEntityMid` (*type:* `String.t`, *default:* `nil`) - Entity from which this range was extracted.
  *   `start` (*type:* `String.t`, *default:* `nil`) - Start date extracted from the entity along start_source_property.
  *   `startSourceProperty` (*type:* `String.t`, *default:* `nil`) - KG-property that links the entity to the start date.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => number() | nil,
          :end => String.t() | nil,
          :endSourceProperty => String.t() | nil,
          :sourceEntityMid => String.t() | nil,
          :start => String.t() | nil,
          :startSourceProperty => String.t() | nil
        }

  field(:confidence)
  field(:end)
  field(:endSourceProperty)
  field(:sourceEntityMid)
  field(:start)
  field(:startSourceProperty)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefSemanticDateRange do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefSemanticDateRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefSemanticDateRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
