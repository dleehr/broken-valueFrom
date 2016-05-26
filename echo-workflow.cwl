cwlVersion: cwl:draft-3
class: Workflow
requirements:
  - class: ScatterFeatureRequirement
  - class: StepInputExpressionRequirement
inputs:
  - id: "scattered_messages"
    type:
      type: array
      items: string
outputs: []
steps:
  - id: "#step1"
    run: {$import: "echo-tool.cwl"}
    scatter:
      - "#step1.scattered_message"
    scatterMethod: dotproduct
    inputs:
      - id: "#step1.scattered_message"
        source: "#scattered_messages"
      - id: "#step1.message"
        valueFrom: "hello from the workflow"
    outputs: []
