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

defmodule GoogleApi.ContentWarehouse.V1.Model.SnapshotImageNode do
  @moduledoc """


  ## Attributes

  *   `boundingBox` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SnapshotBox.t`, *default:* `nil`) - 
  *   `isExternal` (*type:* `boolean()`, *default:* `nil`) - An image is considered external iff both: 1. The image appears in a link that is not in the same org as the document, or the target URL is in a different org. 2. The image src is not in the same org as the document.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The absolute url of the image as present in the page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingBox => GoogleApi.ContentWarehouse.V1.Model.SnapshotBox.t() | nil,
          :isExternal => boolean() | nil,
          :url => String.t() | nil
        }

  field(:boundingBox, as: GoogleApi.ContentWarehouse.V1.Model.SnapshotBox)
  field(:isExternal)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.SnapshotImageNode do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SnapshotImageNode.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.SnapshotImageNode do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end