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

defmodule GoogleApi.Composer.V1beta1.Model.NetworkingConfig do
  @moduledoc """
  Configuration options for networking connections in the Composer 2 environment.

  ## Attributes

  *   `connectionType` (*type:* `String.t`, *default:* `nil`) - Optional. Indicates the user requested specific connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectionType => String.t() | nil
        }

  field(:connectionType)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1beta1.Model.NetworkingConfig do
  def decode(value, options) do
    GoogleApi.Composer.V1beta1.Model.NetworkingConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1beta1.Model.NetworkingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
