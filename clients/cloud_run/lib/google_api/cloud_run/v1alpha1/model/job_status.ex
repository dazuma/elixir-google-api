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

defmodule GoogleApi.CloudRun.V1alpha1.Model.JobStatus do
  @moduledoc """
  JobStatus represents the current state of a Job.

  ## Attributes

  *   `active` (*type:* `integer()`, *default:* `nil`) - Optional. The number of actively running instances. +optional
  *   `completionTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. +optional
  *   `conditions` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.JobCondition.t)`, *default:* `nil`) - Optional. The latest available observations of a job's current state. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/ +optional
  *   `failed` (*type:* `integer()`, *default:* `nil`) - Optional. The number of instances which reached phase Failed. +optional
  *   `imageDigest` (*type:* `String.t`, *default:* `nil`) - Optional. ImageDigest holds the resolved digest for the image specified within .Spec.Template.Spec.Container.Image. The digest is resolved during the creation of the Job. This field holds the digest value regardless of whether a tag or digest was originally specified in the Container object.
  *   `instances` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.InstanceStatus.t)`, *default:* `nil`) - Optional. Status of completed, failed, and running instances. +optional
  *   `observedGeneration` (*type:* `integer()`, *default:* `nil`) - Optional. The 'generation' of the job that was last processed by the controller.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Represents time when the job was acknowledged by the job controller. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. +optional
  *   `succeeded` (*type:* `integer()`, *default:* `nil`) - Optional. The number of instances which reached phase Succeeded. +optional
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :active => integer() | nil,
          :completionTime => DateTime.t() | nil,
          :conditions => list(GoogleApi.CloudRun.V1alpha1.Model.JobCondition.t()) | nil,
          :failed => integer() | nil,
          :imageDigest => String.t() | nil,
          :instances => list(GoogleApi.CloudRun.V1alpha1.Model.InstanceStatus.t()) | nil,
          :observedGeneration => integer() | nil,
          :startTime => DateTime.t() | nil,
          :succeeded => integer() | nil
        }

  field(:active)
  field(:completionTime, as: DateTime)
  field(:conditions, as: GoogleApi.CloudRun.V1alpha1.Model.JobCondition, type: :list)
  field(:failed)
  field(:imageDigest)
  field(:instances, as: GoogleApi.CloudRun.V1alpha1.Model.InstanceStatus, type: :list)
  field(:observedGeneration)
  field(:startTime, as: DateTime)
  field(:succeeded)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.JobStatus do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.JobStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.JobStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
