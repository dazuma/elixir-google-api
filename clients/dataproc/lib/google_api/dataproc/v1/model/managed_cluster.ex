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

defmodule GoogleApi.Dataproc.V1.Model.ManagedCluster do
  @moduledoc """
  Cluster that is managed by the workflow.

  ## Attributes

  *   `clusterName` (*type:* `String.t`, *default:* `nil`) - Required. The cluster name prefix. A unique cluster name will be formed by appending a random suffix.The name must contain only lower-case letters (a-z), numbers (0-9), and hyphens (-). Must begin with a letter. Cannot begin or end with hyphen. Must consist of between 2 and 35 characters.
  *   `config` (*type:* `GoogleApi.Dataproc.V1.Model.ClusterConfig.t`, *default:* `nil`) - Required. The cluster configuration.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. The labels to associate with this cluster.Label keys must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}\\p{N}_-{0,63}No more than 32 labels can be associated with a given cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterName => String.t() | nil,
          :config => GoogleApi.Dataproc.V1.Model.ClusterConfig.t() | nil,
          :labels => map() | nil
        }

  field(:clusterName)
  field(:config, as: GoogleApi.Dataproc.V1.Model.ClusterConfig)
  field(:labels, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.ManagedCluster do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.ManagedCluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.ManagedCluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
