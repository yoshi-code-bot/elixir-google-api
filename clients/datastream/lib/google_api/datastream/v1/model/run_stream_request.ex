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

defmodule GoogleApi.Datastream.V1.Model.RunStreamRequest do
  @moduledoc """
  Request message for running a stream.

  ## Attributes

  *   `cdcStrategy` (*type:* `GoogleApi.Datastream.V1.Model.CdcStrategy.t`, *default:* `nil`) - Optional. The CDC strategy of the stream. If not set, the system's default value will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cdcStrategy => GoogleApi.Datastream.V1.Model.CdcStrategy.t() | nil
        }

  field(:cdcStrategy, as: GoogleApi.Datastream.V1.Model.CdcStrategy)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.RunStreamRequest do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.RunStreamRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.RunStreamRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end