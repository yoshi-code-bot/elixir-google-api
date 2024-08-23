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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CustomColumn do
  @moduledoc """
  A custom column. See Search Ads 360 custom column at https://support.google.com/sa360/answer/9633916

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Output only. User-defined description of the custom column.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the custom column.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. User-defined name of the custom column.
  *   `queryable` (*type:* `boolean()`, *default:* `nil`) - Output only. True when the custom column is available to be used in the query of SearchAds360Service.Search and SearchAds360Service.SearchStream.
  *   `referencedSystemColumns` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The list of the referenced system columns of this custom column. For example, A custom column "sum of impressions and clicks" has referenced system columns of {"metrics.clicks", "metrics.impressions"}.
  *   `referencesAttributes` (*type:* `boolean()`, *default:* `nil`) - Output only. True when the custom column is referring to one or more attributes.
  *   `referencesMetrics` (*type:* `boolean()`, *default:* `nil`) - Output only. True when the custom column is referring to one or more metrics.
  *   `renderType` (*type:* `String.t`, *default:* `nil`) - Output only. How the result value of the custom column should be interpreted.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the custom column. Custom column resource names have the form: `customers/{customer_id}/customColumns/{custom_column_id}`
  *   `valueType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of the result value of the custom column.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :id => String.t() | nil,
          :name => String.t() | nil,
          :queryable => boolean() | nil,
          :referencedSystemColumns => list(String.t()) | nil,
          :referencesAttributes => boolean() | nil,
          :referencesMetrics => boolean() | nil,
          :renderType => String.t() | nil,
          :resourceName => String.t() | nil,
          :valueType => String.t() | nil
        }

  field(:description)
  field(:id)
  field(:name)
  field(:queryable)
  field(:referencedSystemColumns, type: :list)
  field(:referencesAttributes)
  field(:referencesMetrics)
  field(:renderType)
  field(:resourceName)
  field(:valueType)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CustomColumn do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CustomColumn.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CustomColumn do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
