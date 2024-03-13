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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitRetrievalSearchResultSetDebugInfo do
  @moduledoc """
  Optionally returned by Delver API in the response's debug_info field.

  ## Attributes

  *   `queryEncoding` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitRetrievalQueryEncodingDebugInfo.t`, *default:* `nil`) - 
  *   `scamResponse` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScamQueryResponse.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :queryEncoding =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitRetrievalQueryEncodingDebugInfo.t()
            | nil,
          :scamResponse => GoogleApi.ContentWarehouse.V1.Model.ResearchScamQueryResponse.t() | nil
        }

  field(:queryEncoding,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitRetrievalQueryEncodingDebugInfo
  )

  field(:scamResponse, as: GoogleApi.ContentWarehouse.V1.Model.ResearchScamQueryResponse)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitRetrievalSearchResultSetDebugInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitRetrievalSearchResultSetDebugInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitRetrievalSearchResultSetDebugInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
