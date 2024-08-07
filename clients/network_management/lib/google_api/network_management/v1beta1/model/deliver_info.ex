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

defmodule GoogleApi.NetworkManagement.V1beta1.Model.DeliverInfo do
  @moduledoc """
  Details of the final state "deliver" and associated resource.

  ## Attributes

  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - IP address of the target (if applicable).
  *   `pscGoogleApiTarget` (*type:* `String.t`, *default:* `nil`) - PSC Google API target the packet is delivered to (if applicable).
  *   `resourceUri` (*type:* `String.t`, *default:* `nil`) - URI of the resource that the packet is delivered to.
  *   `storageBucket` (*type:* `String.t`, *default:* `nil`) - Name of the Cloud Storage Bucket the packet is delivered to (if applicable).
  *   `target` (*type:* `String.t`, *default:* `nil`) - Target type where the packet is delivered to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ipAddress => String.t() | nil,
          :pscGoogleApiTarget => String.t() | nil,
          :resourceUri => String.t() | nil,
          :storageBucket => String.t() | nil,
          :target => String.t() | nil
        }

  field(:ipAddress)
  field(:pscGoogleApiTarget)
  field(:resourceUri)
  field(:storageBucket)
  field(:target)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1beta1.Model.DeliverInfo do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1beta1.Model.DeliverInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1beta1.Model.DeliverInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
