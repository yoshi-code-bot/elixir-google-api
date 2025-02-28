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

defmodule GoogleApi.DataFusion.V1beta1.Model.LoggingConfig do
  @moduledoc """
  Logging configuration for a Data Fusion instance.

  ## Attributes

  *   `instanceCloudLoggingDisabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Option to determine whether instance logs should be written to Cloud Logging. By default, instance logs are written to Cloud Logging.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instanceCloudLoggingDisabled => boolean() | nil
        }

  field(:instanceCloudLoggingDisabled)
end

defimpl Poison.Decoder, for: GoogleApi.DataFusion.V1beta1.Model.LoggingConfig do
  def decode(value, options) do
    GoogleApi.DataFusion.V1beta1.Model.LoggingConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataFusion.V1beta1.Model.LoggingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
