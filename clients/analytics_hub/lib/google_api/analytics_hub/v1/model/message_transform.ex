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

defmodule GoogleApi.AnalyticsHub.V1.Model.MessageTransform do
  @moduledoc """
  All supported message transforms types.

  ## Attributes

  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, the transform is disabled and will not be applied to messages. Defaults to `false`.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Optional. This field is deprecated, use the `disabled` field to disable transforms.
  *   `javascriptUdf` (*type:* `GoogleApi.AnalyticsHub.V1.Model.JavaScriptUDF.t`, *default:* `nil`) - Optional. JavaScript User Defined Function. If multiple JavaScriptUDF's are specified on a resource, each must have a unique `function_name`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disabled => boolean() | nil,
          :enabled => boolean() | nil,
          :javascriptUdf => GoogleApi.AnalyticsHub.V1.Model.JavaScriptUDF.t() | nil
        }

  field(:disabled)
  field(:enabled)
  field(:javascriptUdf, as: GoogleApi.AnalyticsHub.V1.Model.JavaScriptUDF)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsHub.V1.Model.MessageTransform do
  def decode(value, options) do
    GoogleApi.AnalyticsHub.V1.Model.MessageTransform.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsHub.V1.Model.MessageTransform do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
