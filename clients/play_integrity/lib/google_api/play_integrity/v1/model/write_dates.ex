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

defmodule GoogleApi.PlayIntegrity.V1.Model.WriteDates do
  @moduledoc """
  Contains the recall bits write dates.

  ## Attributes

  *   `yyyymmFirst` (*type:* `integer()`, *default:* `nil`) - Optional. Write time in YYYYMM format (in UTC, e.g. 202402) for the first bit. Note that this value won't be set if the first bit is false.
  *   `yyyymmSecond` (*type:* `integer()`, *default:* `nil`) - Optional. Write time in YYYYMM format (in UTC, e.g. 202402) for the second bit. Note that this value won't be set if the second bit is false.
  *   `yyyymmThird` (*type:* `integer()`, *default:* `nil`) - Optional. Write time in YYYYMM format (in UTC, e.g. 202402) for the third bit. Note that this value won't be set if the third bit is false.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :yyyymmFirst => integer() | nil,
          :yyyymmSecond => integer() | nil,
          :yyyymmThird => integer() | nil
        }

  field(:yyyymmFirst)
  field(:yyyymmSecond)
  field(:yyyymmThird)
end

defimpl Poison.Decoder, for: GoogleApi.PlayIntegrity.V1.Model.WriteDates do
  def decode(value, options) do
    GoogleApi.PlayIntegrity.V1.Model.WriteDates.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlayIntegrity.V1.Model.WriteDates do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
