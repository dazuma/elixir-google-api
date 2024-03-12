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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1EvaluationReference do
  @moduledoc """
  Gives a short summary of an evaluation, and links to the evaluation itself.

  ## Attributes

  *   `aggregateMetrics` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1EvaluationMetrics.t`, *default:* `nil`) - An aggregate of the statistics for the evaluation with fuzzy matching on.
  *   `aggregateMetricsExact` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1EvaluationMetrics.t`, *default:* `nil`) - An aggregate of the statistics for the evaluation with fuzzy matching off.
  *   `evaluation` (*type:* `String.t`, *default:* `nil`) - The resource name of the evaluation.
  *   `operation` (*type:* `String.t`, *default:* `nil`) - The resource name of the Long Running Operation for the evaluation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregateMetrics =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1EvaluationMetrics.t() | nil,
          :aggregateMetricsExact =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1EvaluationMetrics.t() | nil,
          :evaluation => String.t() | nil,
          :operation => String.t() | nil
        }

  field(:aggregateMetrics,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1EvaluationMetrics
  )

  field(:aggregateMetricsExact,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1EvaluationMetrics
  )

  field(:evaluation)
  field(:operation)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1EvaluationReference do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1EvaluationReference.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1EvaluationReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
