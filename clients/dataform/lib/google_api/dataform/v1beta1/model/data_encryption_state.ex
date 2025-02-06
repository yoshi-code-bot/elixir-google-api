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

defmodule GoogleApi.Dataform.V1beta1.Model.DataEncryptionState do
  @moduledoc """
  Describes encryption state of a resource.

  ## Attributes

  *   `kmsKeyVersionName` (*type:* `String.t`, *default:* `nil`) - Required. The KMS key version name with which data of a resource is encrypted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kmsKeyVersionName => String.t() | nil
        }

  field(:kmsKeyVersionName)
end

defimpl Poison.Decoder, for: GoogleApi.Dataform.V1beta1.Model.DataEncryptionState do
  def decode(value, options) do
    GoogleApi.Dataform.V1beta1.Model.DataEncryptionState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataform.V1beta1.Model.DataEncryptionState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
