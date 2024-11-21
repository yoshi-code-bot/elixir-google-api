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

defmodule GoogleApi.Redis.V1beta1.Model.AutomatedBackupConfig do
  @moduledoc """
  The automated backup config for a cluster.

  ## Attributes

  *   `automatedBackupMode` (*type:* `String.t`, *default:* `nil`) - Optional. The automated backup mode. If the mode is disabled, the other fields will be ignored.
  *   `fixedFrequencySchedule` (*type:* `GoogleApi.Redis.V1beta1.Model.FixedFrequencySchedule.t`, *default:* `nil`) - Optional. Trigger automated backups at a fixed frequency.
  *   `retention` (*type:* `String.t`, *default:* `nil`) - Optional. How long to keep automated backups before the backups are deleted. If not specified, the default value is 100 years which is also the maximum value supported. The minimum value is 1 day.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :automatedBackupMode => String.t() | nil,
          :fixedFrequencySchedule =>
            GoogleApi.Redis.V1beta1.Model.FixedFrequencySchedule.t() | nil,
          :retention => String.t() | nil
        }

  field(:automatedBackupMode)
  field(:fixedFrequencySchedule, as: GoogleApi.Redis.V1beta1.Model.FixedFrequencySchedule)
  field(:retention)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.AutomatedBackupConfig do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.AutomatedBackupConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.AutomatedBackupConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
