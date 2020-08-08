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

defmodule GoogleApi.BillingBudgets.V1beta1.Model.GoogleCloudBillingBudgetsV1beta1BudgetAmount do
  @moduledoc """
  The budgeted amount for each usage period.

  ## Attributes

  *   `lastPeriodAmount` (*type:* `GoogleApi.BillingBudgets.V1beta1.Model.GoogleCloudBillingBudgetsV1beta1LastPeriodAmount.t`, *default:* `nil`) - Use the last period's actual spend as the budget for the present period.
  *   `specifiedAmount` (*type:* `GoogleApi.BillingBudgets.V1beta1.Model.GoogleTypeMoney.t`, *default:* `nil`) - A specified amount to use as the budget. `currency_code` is optional. If specified, it must match the currency of the billing account. The `currency_code` is provided on output.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lastPeriodAmount =>
            GoogleApi.BillingBudgets.V1beta1.Model.GoogleCloudBillingBudgetsV1beta1LastPeriodAmount.t(),
          :specifiedAmount => GoogleApi.BillingBudgets.V1beta1.Model.GoogleTypeMoney.t()
        }

  field(:lastPeriodAmount,
    as: GoogleApi.BillingBudgets.V1beta1.Model.GoogleCloudBillingBudgetsV1beta1LastPeriodAmount
  )

  field(:specifiedAmount, as: GoogleApi.BillingBudgets.V1beta1.Model.GoogleTypeMoney)
end

defimpl Poison.Decoder,
  for: GoogleApi.BillingBudgets.V1beta1.Model.GoogleCloudBillingBudgetsV1beta1BudgetAmount do
  def decode(value, options) do
    GoogleApi.BillingBudgets.V1beta1.Model.GoogleCloudBillingBudgetsV1beta1BudgetAmount.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.BillingBudgets.V1beta1.Model.GoogleCloudBillingBudgetsV1beta1BudgetAmount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
