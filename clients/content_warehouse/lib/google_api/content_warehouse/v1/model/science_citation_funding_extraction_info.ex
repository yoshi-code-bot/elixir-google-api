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

defmodule GoogleApi.ContentWarehouse.V1.Model.ScienceCitationFundingExtractionInfo do
  @moduledoc """
  Holds information about the source of the funding entry.

  ## Attributes

  *   `ClearedFunding` (*type:* `String.t`, *default:* `nil`) - Set when we clear all extracted funding from this citation in the parser.
  *   `DebugFundingTextBlock` (*type:* `String.t`, *default:* `nil`) - Text block context from which the funding entry was extracted. Optionally filled and intended to be used for offline analysis.
  *   `DocPart` (*type:* `String.t`, *default:* `nil`) - 
  *   `ParseSection` (*type:* `String.t`, *default:* `nil`) - 
  *   `Source` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ClearedFunding => String.t() | nil,
          :DebugFundingTextBlock => String.t() | nil,
          :DocPart => String.t() | nil,
          :ParseSection => String.t() | nil,
          :Source => String.t() | nil
        }

  field(:ClearedFunding)
  field(:DebugFundingTextBlock)
  field(:DocPart)
  field(:ParseSection)
  field(:Source)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ScienceCitationFundingExtractionInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ScienceCitationFundingExtractionInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ScienceCitationFundingExtractionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end