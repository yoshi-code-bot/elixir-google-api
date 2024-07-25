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

defmodule GoogleApi.BigQuery.V2.Model.ViewDefinition do
  @moduledoc """
  Describes the definition of a logical view.

  ## Attributes

  *   `foreignDefinitions` (*type:* `list(GoogleApi.BigQuery.V2.Model.ForeignViewDefinition.t)`, *default:* `nil`) - Optional. Foreign view representations.
  *   `privacyPolicy` (*type:* `GoogleApi.BigQuery.V2.Model.PrivacyPolicy.t`, *default:* `nil`) - Optional. Specifices the privacy policy for the view.
  *   `query` (*type:* `String.t`, *default:* `nil`) - Required. A query that BigQuery executes when the view is referenced.
  *   `useExplicitColumnNames` (*type:* `boolean()`, *default:* `nil`) - True if the column names are explicitly specified. For example by using the 'CREATE VIEW v(c1, c2) AS ...' syntax. Can only be set for GoogleSQL views.
  *   `useLegacySql` (*type:* `boolean()`, *default:* `nil`) - Specifies whether to use BigQuery's legacy SQL for this view. The default value is true. If set to false, the view will use BigQuery's GoogleSQL: https://cloud.google.com/bigquery/sql-reference/ Queries and views that reference this view must use the same flag value. A wrapper is used here because the default value is True.
  *   `userDefinedFunctionResources` (*type:* `list(GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource.t)`, *default:* `nil`) - Describes user-defined function resources used in the query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :foreignDefinitions =>
            list(GoogleApi.BigQuery.V2.Model.ForeignViewDefinition.t()) | nil,
          :privacyPolicy => GoogleApi.BigQuery.V2.Model.PrivacyPolicy.t() | nil,
          :query => String.t() | nil,
          :useExplicitColumnNames => boolean() | nil,
          :useLegacySql => boolean() | nil,
          :userDefinedFunctionResources =>
            list(GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource.t()) | nil
        }

  field(:foreignDefinitions, as: GoogleApi.BigQuery.V2.Model.ForeignViewDefinition, type: :list)
  field(:privacyPolicy, as: GoogleApi.BigQuery.V2.Model.PrivacyPolicy)
  field(:query)
  field(:useExplicitColumnNames)
  field(:useLegacySql)

  field(:userDefinedFunctionResources,
    as: GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.ViewDefinition do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.ViewDefinition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.ViewDefinition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
