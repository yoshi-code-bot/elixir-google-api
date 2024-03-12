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

defmodule GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1InlineSecret do
  @moduledoc """
  Pairs a set of secret environment variables mapped to encrypted values with the Cloud KMS key to use to decrypt the value.

  ## Attributes

  *   `envMap` (*type:* `map()`, *default:* `nil`) - Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects/*/locations/*/keyRings/*/cryptoKeys/*
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :envMap => map() | nil,
          :kmsKeyName => String.t() | nil
        }

  field(:envMap, type: :map)
  field(:kmsKeyName)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1InlineSecret do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1InlineSecret.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1InlineSecret do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
