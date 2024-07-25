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

defmodule GoogleApi.Docs.V1.Model.ReplaceImageRequest do
  @moduledoc """
  Replaces an existing image with a new image. Replacing an image removes some image effects from the existing image in order to mirror the behavior of the Docs editor.

  ## Attributes

  *   `imageObjectId` (*type:* `String.t`, *default:* `nil`) - The ID of the existing image that will be replaced. The ID can be retrieved from the response of a get request.
  *   `imageReplaceMethod` (*type:* `String.t`, *default:* `nil`) - The replacement method.
  *   `tabId` (*type:* `String.t`, *default:* `nil`) - The tab that the image to be replaced is in. When omitted, the request is applied to the first tab. In a document containing a single tab: - If provided, must match the singular tab's ID. - If omitted, the request applies to the singular tab. In a document containing multiple tabs: - If provided, the request applies to the specified tab. - If omitted, the request applies to the first tab in the document.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - The URI of the new image. The image is fetched once at insertion time and a copy is stored for display inside the document. Images must be less than 50MB, cannot exceed 25 megapixels, and must be in PNG, JPEG, or GIF format. The provided URI can't surpass 2 KB in length. The URI is saved with the image, and exposed through the ImageProperties.source_uri field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :imageObjectId => String.t() | nil,
          :imageReplaceMethod => String.t() | nil,
          :tabId => String.t() | nil,
          :uri => String.t() | nil
        }

  field(:imageObjectId)
  field(:imageReplaceMethod)
  field(:tabId)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.ReplaceImageRequest do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.ReplaceImageRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.ReplaceImageRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
