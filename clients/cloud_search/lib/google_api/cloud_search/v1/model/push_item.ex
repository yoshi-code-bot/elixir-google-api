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

defmodule GoogleApi.CloudSearch.V1.Model.PushItem do
  @moduledoc """
  Represents an item to be pushed to the indexing queue.

  ## Attributes

  *   `contentHash` (*type:* `String.t`, *default:* `nil`) - Content hash of the item according to the repository. If specified, this is used to determine how to modify this item's status. Setting this field and the type field results in argument error. The maximum length is 2048 characters.
  *   `metadataHash` (*type:* `String.t`, *default:* `nil`) - The metadata hash of the item according to the repository. If specified, this is used to determine how to modify this item's status. Setting this field and the type field results in argument error. The maximum length is 2048 characters.
  *   `payload` (*type:* `String.t`, *default:* `nil`) - Provides additional document state information for the connector, such as an alternate repository ID and other metadata. The maximum length is 8192 bytes.
  *   `queue` (*type:* `String.t`, *default:* `nil`) - Queue to which this item belongs. The `default` queue is chosen if this field is not specified. The maximum length is 512 characters.
  *   `repositoryError` (*type:* `GoogleApi.CloudSearch.V1.Model.RepositoryError.t`, *default:* `nil`) - Populate this field to store Connector or repository error details. This information is displayed in the Admin Console. This field may only be populated when the Type is REPOSITORY_ERROR.
  *   `structuredDataHash` (*type:* `String.t`, *default:* `nil`) - Structured data hash of the item according to the repository. If specified, this is used to determine how to modify this item's status. Setting this field and the type field results in argument error. The maximum length is 2048 characters.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the push operation that defines the push behavior.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentHash => String.t() | nil,
          :metadataHash => String.t() | nil,
          :payload => String.t() | nil,
          :queue => String.t() | nil,
          :repositoryError => GoogleApi.CloudSearch.V1.Model.RepositoryError.t() | nil,
          :structuredDataHash => String.t() | nil,
          :type => String.t() | nil
        }

  field(:contentHash)
  field(:metadataHash)
  field(:payload)
  field(:queue)
  field(:repositoryError, as: GoogleApi.CloudSearch.V1.Model.RepositoryError)
  field(:structuredDataHash)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.PushItem do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.PushItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.PushItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
