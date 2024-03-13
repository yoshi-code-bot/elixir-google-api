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

defmodule GoogleApi.ContentWarehouse.V1.Model.EmbedsEmbedClientItem do
  @moduledoc """
  Represents an embedded object in an update. This is a wrapper class that can contain a single specific item proto in an extension field. Think of it as a base class like `Message` in Java. Each item proto must declare that it extends this proto: message ExampleObject { option (item_type) = EXAMPLE_OBJECT; extend EmbedClientItem { optional ExampleObject example_object = ; } } See go/es-embeds for details.

  ## Attributes

  *   `canonicalId` (*type:* `String.t`, *default:* `nil`) - The canonical ID of the embed. If absent, the canonical ID is equal to the ID; if present, then the canonical ID represents an "equivalence class" of embeds which really refer to the same object. (For example, the URLs http://www.foo.com/ and http://foo.com/ refer to the same object) This field may be updated periodically by background processes.
  *   `deepLinkData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.EmbedsDeepLinkData.t`, *default:* `nil`) - Deep-linking data to take the user to the right place in a mobile app. This is only used for preview and attribution. Links that are specific to a given embed type should live on that specific embed's proto by using Link. See http://goto.google.com/mariana-design.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the embed. This corresponds to the schema.org ID, as represented in the ItemScope.id field.
  *   `provenance` (*type:* `GoogleApi.ContentWarehouse.V1.Model.EmbedsProvenance.t`, *default:* `nil`) - The provenance of the embed, populated when the embed originated from a web fetch. The provenance captures information about the web page the embed had originated, like the URL that was retrieved and the retrieved URL's canonical form. This is useful in the case where the URL shared by the URL redirects (e.g., in the case of a shortened URL).
  *   `renderId` (*type:* `String.t`, *default:* `nil`) - The ID used to identify the embed during rendering. This field will match ID, if set, otherwise it will be the ID of the parent activity. This field is only populated on the server for client use and is not persisted to storage.
  *   `signature` (*type:* `String.t`, *default:* `nil`) - Signature of the embed, used for verification.
  *   `transientData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.EmbedsTransientData.t`, *default:* `nil`) - Transient generic data that will not be saved on the server.
  *   `type` (*type:* `list(String.t)`, *default:* `nil`) - The first value in `type` determines which extension field will be set. When creating an EmbedClientItem, you only need to set the first (primary) type in this field. When the server receives the item, it will populate the full type list using the parent annotations in the ItemType enum.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canonicalId => String.t() | nil,
          :deepLinkData => GoogleApi.ContentWarehouse.V1.Model.EmbedsDeepLinkData.t() | nil,
          :id => String.t() | nil,
          :provenance => GoogleApi.ContentWarehouse.V1.Model.EmbedsProvenance.t() | nil,
          :renderId => String.t() | nil,
          :signature => String.t() | nil,
          :transientData => GoogleApi.ContentWarehouse.V1.Model.EmbedsTransientData.t() | nil,
          :type => list(String.t()) | nil
        }

  field(:canonicalId)
  field(:deepLinkData, as: GoogleApi.ContentWarehouse.V1.Model.EmbedsDeepLinkData)
  field(:id)
  field(:provenance, as: GoogleApi.ContentWarehouse.V1.Model.EmbedsProvenance)
  field(:renderId)
  field(:signature)
  field(:transientData, as: GoogleApi.ContentWarehouse.V1.Model.EmbedsTransientData)
  field(:type, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.EmbedsEmbedClientItem do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.EmbedsEmbedClientItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.EmbedsEmbedClientItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
