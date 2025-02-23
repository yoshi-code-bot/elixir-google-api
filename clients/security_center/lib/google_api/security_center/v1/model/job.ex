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

defmodule GoogleApi.SecurityCenter.V1.Model.Job do
  @moduledoc """
  Describes a job

  ## Attributes

  *   `errorCode` (*type:* `integer()`, *default:* `nil`) - Optional. If the job did not complete successfully, this field describes why.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Optional. Gives the location where the job ran, such as `US` or `europe-west1`
  *   `name` (*type:* `String.t`, *default:* `nil`) - The fully-qualified name for a job. e.g. `projects//jobs/`
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the job, such as `RUNNING` or `PENDING`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorCode => integer() | nil,
          :location => String.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil
        }

  field(:errorCode)
  field(:location)
  field(:name)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.Job do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.Job.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.Job do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
