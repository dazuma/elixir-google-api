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

defmodule GoogleApi.CloudDeploy.V1.Model.PipelineCondition do
  @moduledoc """
  PipelineCondition contains all conditions relevant to a Delivery Pipeline.

  ## Attributes

  *   `pipelineReadyCondition` (*type:* `GoogleApi.CloudDeploy.V1.Model.PipelineReadyCondition.t`, *default:* `nil`) - Details around the Pipeline's overall status.
  *   `targetsPresentCondition` (*type:* `GoogleApi.CloudDeploy.V1.Model.TargetsPresentCondition.t`, *default:* `nil`) - Details around targets enumerated in the pipeline.
  *   `targetsTypeCondition` (*type:* `GoogleApi.CloudDeploy.V1.Model.TargetsTypeCondition.t`, *default:* `nil`) - Details on the whether the targets enumerated in the pipeline are of the same type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pipelineReadyCondition =>
            GoogleApi.CloudDeploy.V1.Model.PipelineReadyCondition.t() | nil,
          :targetsPresentCondition =>
            GoogleApi.CloudDeploy.V1.Model.TargetsPresentCondition.t() | nil,
          :targetsTypeCondition => GoogleApi.CloudDeploy.V1.Model.TargetsTypeCondition.t() | nil
        }

  field(:pipelineReadyCondition, as: GoogleApi.CloudDeploy.V1.Model.PipelineReadyCondition)
  field(:targetsPresentCondition, as: GoogleApi.CloudDeploy.V1.Model.TargetsPresentCondition)
  field(:targetsTypeCondition, as: GoogleApi.CloudDeploy.V1.Model.TargetsTypeCondition)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.PipelineCondition do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.PipelineCondition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.PipelineCondition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
