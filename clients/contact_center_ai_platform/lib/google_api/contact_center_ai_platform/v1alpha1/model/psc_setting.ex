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

defmodule GoogleApi.ContactCenterAIPlatform.V1alpha1.Model.PscSetting do
  @moduledoc """
  Private service connect settings.

  ## Attributes

  *   `allowedConsumerProjectIds` (*type:* `list(String.t)`, *default:* `nil`) - The list of project ids that are allowed to send traffic to the service attachment. This field should be filled only for the ingress components.
  *   `producerProjectIds` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The CCAIP tenant project ids.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedConsumerProjectIds => list(String.t()) | nil,
          :producerProjectIds => list(String.t()) | nil
        }

  field(:allowedConsumerProjectIds, type: :list)
  field(:producerProjectIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContactCenterAIPlatform.V1alpha1.Model.PscSetting do
  def decode(value, options) do
    GoogleApi.ContactCenterAIPlatform.V1alpha1.Model.PscSetting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContactCenterAIPlatform.V1alpha1.Model.PscSetting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
