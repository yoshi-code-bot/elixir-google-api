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

defmodule GoogleApi.BigQuery.V2.Model.ExternalCatalogDatasetOptions do
  @moduledoc """
  Options defining open source compatible datasets living in the BigQuery catalog. Contains metadata of open source database, schema or namespace represented by the current dataset.

  ## Attributes

  *   `defaultStorageLocationUri` (*type:* `String.t`, *default:* `nil`) - Optional. The storage location URI for all tables in the dataset. Equivalent to hive metastore's database locationUri. Maximum length of 1024 characters.
  *   `parameters` (*type:* `map()`, *default:* `nil`) - Optional. A map of key value pairs defining the parameters and properties of the open source schema. Maximum size of 2Mib.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultStorageLocationUri => String.t() | nil,
          :parameters => map() | nil
        }

  field(:defaultStorageLocationUri)
  field(:parameters, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.ExternalCatalogDatasetOptions do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.ExternalCatalogDatasetOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.ExternalCatalogDatasetOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end