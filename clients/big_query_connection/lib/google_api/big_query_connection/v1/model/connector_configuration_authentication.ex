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

defmodule GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationAuthentication do
  @moduledoc """
  Client authentication.

  ## Attributes

  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Output only. Google-managed service account associated with this connection, e.g., `service-{project_number}@gcp-sa-bigqueryconnection.iam.gserviceaccount.com`. BigQuery jobs using this connection will act as `service_account` identity while connecting to the datasource.
  *   `usernamePassword` (*type:* `GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationUsernamePassword.t`, *default:* `nil`) - Username/password authentication.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :serviceAccount => String.t() | nil,
          :usernamePassword =>
            GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationUsernamePassword.t() | nil
        }

  field(:serviceAccount)

  field(:usernamePassword,
    as: GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationUsernamePassword
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationAuthentication do
  def decode(value, options) do
    GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationAuthentication.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationAuthentication do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
