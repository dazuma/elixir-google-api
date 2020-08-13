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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_PredictionInput do
  @moduledoc """
  Represents input parameters for a prediction job.

  ## Attributes

  *   `batchSize` (*type:* `String.t`, *default:* `nil`) - Optional. Number of records per batch, defaults to 64. The service will buffer batch_size number of records in memory before invoking one Tensorflow prediction call internally. So take the record size and memory available into consideration when setting this parameter.
  *   `dataFormat` (*type:* `String.t`, *default:* `nil`) - Required. The format of the input data files.
  *   `inputPaths` (*type:* `list(String.t)`, *default:* `nil`) - Required. The Cloud Storage location of the input data files. May contain wildcards.
  *   `maxWorkerCount` (*type:* `String.t`, *default:* `nil`) - Optional. The maximum number of workers to be used for parallel processing. Defaults to 10 if not specified.
  *   `modelName` (*type:* `String.t`, *default:* `nil`) - Use this field if you want to use the default version for the specified model. The string must use the following format: `"projects/YOUR_PROJECT/models/YOUR_MODEL"`
  *   `outputDataFormat` (*type:* `String.t`, *default:* `nil`) - Optional. Format of the output data files, defaults to JSON.
  *   `outputPath` (*type:* `String.t`, *default:* `nil`) - Required. The output Google Cloud Storage location.
  *   `region` (*type:* `String.t`, *default:* `nil`) - Required. The Google Compute Engine region to run the prediction job in. See the available regions for AI Platform services.
  *   `runtimeVersion` (*type:* `String.t`, *default:* `nil`) - Optional. The AI Platform runtime version to use for this batch prediction. If not set, AI Platform will pick the runtime version used during the CreateVersion request for this model version, or choose the latest stable version when model version information is not available such as when the model is specified by uri.
  *   `signatureName` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the signature defined in the SavedModel to use for this job. Please refer to [SavedModel](https://tensorflow.github.io/serving/serving_basic.html) for information about how to use signatures. Defaults to [DEFAULT_SERVING_SIGNATURE_DEF_KEY](https://www.tensorflow.org/api_docs/python/tf/saved_model/signature_constants) , which is "serving_default".
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Use this field if you want to specify a Google Cloud Storage path for the model to use.
  *   `versionName` (*type:* `String.t`, *default:* `nil`) - Use this field if you want to specify a version of the model to use. The string is formatted the same way as `model_version`, with the addition of the version information: `"projects/YOUR_PROJECT/models/YOUR_MODEL/versions/YOUR_VERSION"`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchSize => String.t(),
          :dataFormat => String.t(),
          :inputPaths => list(String.t()),
          :maxWorkerCount => String.t(),
          :modelName => String.t(),
          :outputDataFormat => String.t(),
          :outputPath => String.t(),
          :region => String.t(),
          :runtimeVersion => String.t(),
          :signatureName => String.t(),
          :uri => String.t(),
          :versionName => String.t()
        }

  field(:batchSize)
  field(:dataFormat)
  field(:inputPaths, type: :list)
  field(:maxWorkerCount)
  field(:modelName)
  field(:outputDataFormat)
  field(:outputPath)
  field(:region)
  field(:runtimeVersion)
  field(:signatureName)
  field(:uri)
  field(:versionName)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_PredictionInput do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_PredictionInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_PredictionInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
