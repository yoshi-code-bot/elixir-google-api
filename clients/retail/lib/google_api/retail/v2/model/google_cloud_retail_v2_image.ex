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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Image do
  @moduledoc """
  Product image. Recommendations AI and Retail Search use product images to improve prediction and search results. Product images can be returned in results, and are shown in prediction or search previews in the console. Please try to provide correct product images and avoid using images with size too small.

  ## Attributes

  *   `height` (*type:* `integer()`, *default:* `nil`) - Height of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Required. URI of the image. This field must be a valid UTF-8 encoded URI with a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [image_link](https://support.google.com/merchants/answer/6324350). Schema.org property [Product.image](https://schema.org/image).
  *   `width` (*type:* `integer()`, *default:* `nil`) - Width of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :height => integer() | nil,
          :uri => String.t() | nil,
          :width => integer() | nil
        }

  field(:height)
  field(:uri)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Image do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Image.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Image do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
