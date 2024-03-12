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

defmodule GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec do
  @moduledoc """
  Specification that applies to database view.

  ## Attributes

  *   `baseTable` (*type:* `String.t`, *default:* `nil`) - Name of a singular table this view reflects one to one.
  *   `sqlQuery` (*type:* `String.t`, *default:* `nil`) - SQL query used to generate this view.
  *   `viewType` (*type:* `String.t`, *default:* `nil`) - Type of this view.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseTable => String.t() | nil,
          :sqlQuery => String.t() | nil,
          :viewType => String.t() | nil
        }

  field(:baseTable)
  field(:sqlQuery)
  field(:viewType)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end