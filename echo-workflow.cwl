cwlVersion: v1.0
class: Workflow
requirements:
  - class: ScatterFeatureRequirement
  - class: StepInputExpressionRequirement
inputs:
  scattered_messages: string[]
outputs: []
steps:
  step1:
    run: echo-tool.cwl
    scatter: [scattered_message]
    scatterMethod: dotproduct
    in:
      scattered_message: scattered_messages
      message:
        valueFrom: "Hello"
    out: []
