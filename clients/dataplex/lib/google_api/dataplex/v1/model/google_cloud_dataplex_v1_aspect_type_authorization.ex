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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AspectTypeAuthorization do
  @moduledoc """
  Autorization for an AspectType.

  ## Attributes

  *   `alternateUsePermission` (*type:* `String.t`, *default:* `nil`) - Immutable. The IAM permission grantable on the EntryGroup to allow access to instantiate Aspects of Dataplex owned AspectTypes, only settable for Dataplex owned Types.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternateUsePermission => String.t() | nil
        }

  field(:alternateUsePermission)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AspectTypeAuthorization do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AspectTypeAuthorization.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AspectTypeAuthorization do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
