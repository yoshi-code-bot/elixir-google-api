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

defmodule GoogleApi.ContentWarehouse.V1.Model.WirelessTranscoderFetchFetchSourceInfo do
  @moduledoc """
  To tag which fetcher satisfied this fetch request with optional detail.

  ## Attributes

  *   `detail` (*type:* `String.t`, *default:* `nil`) - Provides fetcher-specific detail about how source satisfied the request.
  *   `source` (*type:* `String.t`, *default:* `nil`) - The fetcher that ultimately satisfied this fetch request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detail => String.t() | nil,
          :source => String.t() | nil
        }

  field(:detail)
  field(:source)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.WirelessTranscoderFetchFetchSourceInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.WirelessTranscoderFetchFetchSourceInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.WirelessTranscoderFetchFetchSourceInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
