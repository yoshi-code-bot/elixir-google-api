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

defmodule GoogleApi.SQLAdmin.V1.Model.SqlInstancesGetDiskShrinkConfigResponse do
  @moduledoc """
  Instance get disk shrink config response.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always `sql#getDiskShrinkConfig`.
  *   `message` (*type:* `String.t`, *default:* `nil`) - Additional message to customers.
  *   `minimalTargetSizeGb` (*type:* `String.t`, *default:* `nil`) - The minimum size to which a disk can be shrunk in GigaBytes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :message => String.t() | nil,
          :minimalTargetSizeGb => String.t() | nil
        }

  field(:kind)
  field(:message)
  field(:minimalTargetSizeGb)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1.Model.SqlInstancesGetDiskShrinkConfigResponse do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.SqlInstancesGetDiskShrinkConfigResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1.Model.SqlInstancesGetDiskShrinkConfigResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end