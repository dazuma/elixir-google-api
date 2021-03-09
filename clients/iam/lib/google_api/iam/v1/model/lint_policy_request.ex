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

defmodule GoogleApi.IAM.V1.Model.LintPolicyRequest do
  @moduledoc """
  The request to lint a Cloud IAM policy object.

  ## Attributes

  *   `condition` (*type:* `GoogleApi.IAM.V1.Model.Expr.t`, *default:* `nil`) - google.iam.v1.Binding.condition object to be linted.
  *   `fullResourceName` (*type:* `String.t`, *default:* `nil`) - The full resource name of the policy this lint request is about. The name follows the Google Cloud Platform (GCP) resource format. For example, a GCP project with ID `my-project` will be named `//cloudresourcemanager.googleapis.com/projects/my-project`. The resource name is not used to read the policy instance from the Cloud IAM database. The candidate policy for lint has to be provided in the same request object.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :condition => GoogleApi.IAM.V1.Model.Expr.t() | nil,
          :fullResourceName => String.t() | nil
        }

  field(:condition, as: GoogleApi.IAM.V1.Model.Expr)
  field(:fullResourceName)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.LintPolicyRequest do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.LintPolicyRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.LintPolicyRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
