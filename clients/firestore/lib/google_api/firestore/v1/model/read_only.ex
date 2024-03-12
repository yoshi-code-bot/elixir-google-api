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

defmodule GoogleApi.Firestore.V1.Model.ReadOnly do
  @moduledoc """
  Options for a transaction that can only be used to read documents.

  ## Attributes

  *   `readTime` (*type:* `DateTime.t`, *default:* `nil`) - Reads documents at the given time. This must be a microsecond precision timestamp within the past one hour, or if Point-in-Time Recovery is enabled, can additionally be a whole minute timestamp within the past 7 days.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :readTime => DateTime.t() | nil
        }

  field(:readTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.ReadOnly do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.ReadOnly.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.ReadOnly do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
