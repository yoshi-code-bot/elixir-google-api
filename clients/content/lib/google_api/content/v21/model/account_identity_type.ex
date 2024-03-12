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

defmodule GoogleApi.Content.V21.Model.AccountIdentityType do
  @moduledoc """
  The account identity type used to specify attributes.

  ## Attributes

  *   `selfIdentified` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates that the business identifies itself with a given identity type. Setting this field does not automatically mean eligibility for promotions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :selfIdentified => boolean() | nil
        }

  field(:selfIdentified)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountIdentityType do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountIdentityType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountIdentityType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end