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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityLinkMetadata do
  @moduledoc """
  Metadata about the nature of the link.

  ## Attributes

  *   `aggregateFlags` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLinkKindFlags.t`, *default:* `nil`) - The aggregate kind flags for the link.
  *   `kindInfo` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLinkKindInfo.t)`, *default:* `nil`) - Information about all the link kinds associated with the link.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregateFlags =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLinkKindFlags.t() | nil,
          :kindInfo =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLinkKindInfo.t()) | nil
        }

  field(:aggregateFlags, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLinkKindFlags)

  field(:kindInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLinkKindInfo,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityLinkMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityLinkMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityLinkMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end