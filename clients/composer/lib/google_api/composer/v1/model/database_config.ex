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

defmodule GoogleApi.Composer.V1.Model.DatabaseConfig do
  @moduledoc """
  The configuration of Cloud SQL instance that is used by the Apache Airflow software.

  ## Attributes

  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used. Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - Optional. The Compute Engine zone where the Airflow database is created. If zone is provided, it must be in the region selected for the environment. If zone is not provided, a zone is automatically selected. The zone can only be set during environment creation. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.*.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :machineType => String.t() | nil,
          :zone => String.t() | nil
        }

  field(:machineType)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1.Model.DatabaseConfig do
  def decode(value, options) do
    GoogleApi.Composer.V1.Model.DatabaseConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1.Model.DatabaseConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
