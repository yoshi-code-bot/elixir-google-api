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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoodocWordAlternates do
  @moduledoc """
  Alternate OCR words for Ptolemy OCR Correction. This is the output of the Ptolemy error estimator. See http://go/Ptolemy.

  ## Attributes

  *   `ErrorProbability` (*type:* `integer()`, *default:* `nil`) - The probability that the main OCR engine (Abbyy) string is incorrect; range is 0 (definitely correct) to 100 (definitely incorrect).
  *   `alternate` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GoodocWordAlternatesAlternate.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ErrorProbability => integer() | nil,
          :alternate =>
            list(GoogleApi.ContentWarehouse.V1.Model.GoodocWordAlternatesAlternate.t()) | nil
        }

  field(:ErrorProbability)

  field(:alternate,
    as: GoogleApi.ContentWarehouse.V1.Model.GoodocWordAlternatesAlternate,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GoodocWordAlternates do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoodocWordAlternates.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GoodocWordAlternates do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end