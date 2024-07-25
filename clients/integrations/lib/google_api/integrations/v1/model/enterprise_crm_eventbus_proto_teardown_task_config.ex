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

defmodule GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoTeardownTaskConfig do
  @moduledoc """


  ## Attributes

  *   `creatorEmail` (*type:* `String.t`, *default:* `nil`) - The creator's email address.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Unique identifier of the teardown task within this Config. We use this field as the identifier to find next teardown tasks.
  *   `nextTeardownTask` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoNextTeardownTask.t`, *default:* `nil`) - 
  *   `parameters` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoEventParameters.t`, *default:* `nil`) - The parameters the user can pass to this task.
  *   `properties` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoEventBusProperties.t`, *default:* `nil`) - 
  *   `teardownTaskImplementationClassName` (*type:* `String.t`, *default:* `nil`) - Required. Implementation class name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creatorEmail => String.t() | nil,
          :name => String.t() | nil,
          :nextTeardownTask =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoNextTeardownTask.t() | nil,
          :parameters =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoEventParameters.t() | nil,
          :properties =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoEventBusProperties.t() | nil,
          :teardownTaskImplementationClassName => String.t() | nil
        }

  field(:creatorEmail)
  field(:name)

  field(:nextTeardownTask,
    as: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoNextTeardownTask
  )

  field(:parameters, as: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoEventParameters)

  field(:properties,
    as: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoEventBusProperties
  )

  field(:teardownTaskImplementationClassName)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoTeardownTaskConfig do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoTeardownTaskConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoTeardownTaskConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
