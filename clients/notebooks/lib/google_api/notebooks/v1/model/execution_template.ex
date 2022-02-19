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

defmodule GoogleApi.Notebooks.V1.Model.ExecutionTemplate do
  @moduledoc """
  The description a notebook execution workload.

  ## Attributes

  *   `acceleratorConfig` (*type:* `GoogleApi.Notebooks.V1.Model.SchedulerAcceleratorConfig.t`, *default:* `nil`) - Configuration (count and accelerator type) for hardware running notebook execution.
  *   `containerImageUri` (*type:* `String.t`, *default:* `nil`) - Container Image URI to a DLVM Example: 'gcr.io/deeplearning-platform-release/base-cu100' More examples can be found at: https://cloud.google.com/ai-platform/deep-learning-containers/docs/choosing-container
  *   `dataprocParameters` (*type:* `GoogleApi.Notebooks.V1.Model.DataprocParameters.t`, *default:* `nil`) - Parameters used in Dataproc JobType executions.
  *   `inputNotebookFile` (*type:* `String.t`, *default:* `nil`) - Path to the notebook file to execute. Must be in a Google Cloud Storage bucket. Format: `gs://{bucket_name}/{folder}/{notebook_file_name}` Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook.ipynb`
  *   `jobType` (*type:* `String.t`, *default:* `nil`) - The type of Job to be used on this execution.
  *   `kernelSpec` (*type:* `String.t`, *default:* `nil`) - Name of the kernel spec to use. This must be specified if the kernel spec name on the execution target does not match the name in the input notebook file.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels for execution. If execution is scheduled, a field included will be 'nbs-scheduled'. Otherwise, it is an immediate execution, and an included field will be 'nbs-immediate'. Use fields to efficiently index between various types of executions.
  *   `masterType` (*type:* `String.t`, *default:* `nil`) - Specifies the type of virtual machine to use for your training job's master worker. You must specify this field when `scaleTier` is set to `CUSTOM`. You can use certain Compute Engine machine types directly in this field. The following types are supported: - `n1-standard-4` - `n1-standard-8` - `n1-standard-16` - `n1-standard-32` - `n1-standard-64` - `n1-standard-96` - `n1-highmem-2` - `n1-highmem-4` - `n1-highmem-8` - `n1-highmem-16` - `n1-highmem-32` - `n1-highmem-64` - `n1-highmem-96` - `n1-highcpu-16` - `n1-highcpu-32` - `n1-highcpu-64` - `n1-highcpu-96` Alternatively, you can use the following legacy machine types: - `standard` - `large_model` - `complex_model_s` - `complex_model_m` - `complex_model_l` - `standard_gpu` - `complex_model_m_gpu` - `complex_model_l_gpu` - `standard_p100` - `complex_model_m_p100` - `standard_v100` - `large_model_v100` - `complex_model_m_v100` - `complex_model_l_v100` Finally, if you want to use a TPU for training, specify `cloud_tpu` in this field. Learn more about the [special configuration options for training with TPU](https://cloud.google.com/ai-platform/training/docs/using-tpus#configuring_a_custom_tpu_machine).
  *   `outputNotebookFolder` (*type:* `String.t`, *default:* `nil`) - Path to the notebook folder to write to. Must be in a Google Cloud Storage bucket path. Format: `gs://{bucket_name}/{folder}` Ex: `gs://notebook_user/scheduled_notebooks`
  *   `parameters` (*type:* `String.t`, *default:* `nil`) - Parameters used within the 'input_notebook_file' notebook.
  *   `paramsYamlFile` (*type:* `String.t`, *default:* `nil`) - Parameters to be overridden in the notebook during execution. Ref https://papermill.readthedocs.io/en/latest/usage-parameterize.html on how to specifying parameters in the input notebook and pass them here in an YAML file. Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook_params.yaml`
  *   `scaleTier` (*type:* `String.t`, *default:* `nil`) - Required. Scale tier of the hardware used for notebook execution. DEPRECATED Will be discontinued. As right now only CUSTOM is supported.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - The email address of a service account to use when running the execution. You must have the `iam.serviceAccounts.actAs` permission for the specified service account.
  *   `tensorboard` (*type:* `String.t`, *default:* `nil`) - The name of a Vertex AI [Tensorboard] resource to which this execution will upload Tensorboard logs. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  *   `vertexAiParameters` (*type:* `GoogleApi.Notebooks.V1.Model.VertexAIParameters.t`, *default:* `nil`) - Parameters used in Vertex AI JobType executions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acceleratorConfig => GoogleApi.Notebooks.V1.Model.SchedulerAcceleratorConfig.t() | nil,
          :containerImageUri => String.t() | nil,
          :dataprocParameters => GoogleApi.Notebooks.V1.Model.DataprocParameters.t() | nil,
          :inputNotebookFile => String.t() | nil,
          :jobType => String.t() | nil,
          :kernelSpec => String.t() | nil,
          :labels => map() | nil,
          :masterType => String.t() | nil,
          :outputNotebookFolder => String.t() | nil,
          :parameters => String.t() | nil,
          :paramsYamlFile => String.t() | nil,
          :scaleTier => String.t() | nil,
          :serviceAccount => String.t() | nil,
          :tensorboard => String.t() | nil,
          :vertexAiParameters => GoogleApi.Notebooks.V1.Model.VertexAIParameters.t() | nil
        }

  field(:acceleratorConfig, as: GoogleApi.Notebooks.V1.Model.SchedulerAcceleratorConfig)
  field(:containerImageUri)
  field(:dataprocParameters, as: GoogleApi.Notebooks.V1.Model.DataprocParameters)
  field(:inputNotebookFile)
  field(:jobType)
  field(:kernelSpec)
  field(:labels, type: :map)
  field(:masterType)
  field(:outputNotebookFolder)
  field(:parameters)
  field(:paramsYamlFile)
  field(:scaleTier)
  field(:serviceAccount)
  field(:tensorboard)
  field(:vertexAiParameters, as: GoogleApi.Notebooks.V1.Model.VertexAIParameters)
end

defimpl Poison.Decoder, for: GoogleApi.Notebooks.V1.Model.ExecutionTemplate do
  def decode(value, options) do
    GoogleApi.Notebooks.V1.Model.ExecutionTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Notebooks.V1.Model.ExecutionTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
