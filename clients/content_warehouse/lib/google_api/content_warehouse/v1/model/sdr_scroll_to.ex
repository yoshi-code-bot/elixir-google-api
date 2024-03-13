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

defmodule GoogleApi.ContentWarehouse.V1.Model.SdrScrollTo do
  @moduledoc """
  Data needed to construct a go/scroll-to text fragment. The url fragment is: #:~:text=[prefix-,]text_start,text_end

  ## Attributes

  *   `onpageMatches` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SdrScrollToOnPageMatches.t`, *default:* `nil`) - 
  *   `prefix` (*type:* `String.t`, *default:* `nil`) - Prefix to help with disambiguating between multiple text matches on page. Optional.
  *   `suffix` (*type:* `String.t`, *default:* `nil`) - Suffix to help with disambiguating between multiple text matches on page. Optional.
  *   `textEnd` (*type:* `String.t`, *default:* `nil`) - End of the text span to be highlighted. Optional.
  *   `textStart` (*type:* `String.t`, *default:* `nil`) - Start of the text span to be highlighted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :onpageMatches =>
            GoogleApi.ContentWarehouse.V1.Model.SdrScrollToOnPageMatches.t() | nil,
          :prefix => String.t() | nil,
          :suffix => String.t() | nil,
          :textEnd => String.t() | nil,
          :textStart => String.t() | nil
        }

  field(:onpageMatches, as: GoogleApi.ContentWarehouse.V1.Model.SdrScrollToOnPageMatches)
  field(:prefix)
  field(:suffix)
  field(:textEnd)
  field(:textStart)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.SdrScrollTo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SdrScrollTo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.SdrScrollTo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
