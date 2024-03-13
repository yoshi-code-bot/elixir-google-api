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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoTimedtextS4ALIResults do
  @moduledoc """


  ## Attributes

  *   `langResults` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoTimedtextS4LangScore.t)`, *default:* `nil`) - The complete list of language scores, sorted from high score to low.
  *   `speechClass` (*type:* `String.t`, *default:* `nil`) - What kind of speech (if any) was detected.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :langResults =>
            list(GoogleApi.ContentWarehouse.V1.Model.VideoTimedtextS4LangScore.t()) | nil,
          :speechClass => String.t() | nil
        }

  field(:langResults,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoTimedtextS4LangScore,
    type: :list
  )

  field(:speechClass)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoTimedtextS4ALIResults do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoTimedtextS4ALIResults.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoTimedtextS4ALIResults do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
