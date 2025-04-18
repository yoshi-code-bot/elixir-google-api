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

defmodule GoogleApi.Dataform.V1beta1.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.Dataform.V1beta1.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      # View and manage your data in Google BigQuery and see the email address for your Google Account
      "https://www.googleapis.com/auth/bigquery",

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      "https://www.googleapis.com/auth/cloud-platform"
    ],
    otp_app: :google_api_dataform,
    base_url: "https://dataform.googleapis.com/"
end
