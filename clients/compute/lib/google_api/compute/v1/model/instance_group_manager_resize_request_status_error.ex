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

defmodule GoogleApi.Compute.V1.Model.InstanceGroupManagerResizeRequestStatusError do
  @moduledoc """
  [Output only] Fatal errors encountered during the queueing or provisioning phases of the ResizeRequest that caused the transition to the FAILED state. Contrary to the last_attempt errors, this field is final and errors are never removed from here, as the ResizeRequest is not going to retry.

  ## Attributes

  *   `errors` (*type:* `list(GoogleApi.Compute.V1.Model.InstanceGroupManagerResizeRequestStatusErrorErrors.t)`, *default:* `nil`) - [Output Only] The array of errors encountered while processing this operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errors =>
            list(
              GoogleApi.Compute.V1.Model.InstanceGroupManagerResizeRequestStatusErrorErrors.t()
            )
            | nil
        }

  field(:errors,
    as: GoogleApi.Compute.V1.Model.InstanceGroupManagerResizeRequestStatusErrorErrors,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Compute.V1.Model.InstanceGroupManagerResizeRequestStatusError do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceGroupManagerResizeRequestStatusError.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Compute.V1.Model.InstanceGroupManagerResizeRequestStatusError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end