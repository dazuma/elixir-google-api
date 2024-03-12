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

defmodule GoogleApi.CloudDeploy.V1.Model.RollbackAttempt do
  @moduledoc """
  RollbackAttempt represents an action of rolling back a Cloud Deploy 'Target'.

  ## Attributes

  *   `destinationPhase` (*type:* `String.t`, *default:* `nil`) - Output only. The phase to which the rollout will be rolled back to.
  *   `rolloutId` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the rollback `Rollout` to create.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Valid state of this rollback action.
  *   `stateDesc` (*type:* `String.t`, *default:* `nil`) - Output only. Description of the state of the Rollback.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destinationPhase => String.t() | nil,
          :rolloutId => String.t() | nil,
          :state => String.t() | nil,
          :stateDesc => String.t() | nil
        }

  field(:destinationPhase)
  field(:rolloutId)
  field(:state)
  field(:stateDesc)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.RollbackAttempt do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.RollbackAttempt.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.RollbackAttempt do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
