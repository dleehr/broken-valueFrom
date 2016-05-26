cwlVersion: cwl:draft-3
class: Workflow
requirements:
  - class: StepInputExpressionRequirement
inputs: []
outputs: []
steps:
  - id: "#step1"
    run: {$import: "echo-tool.cwl"}
    inputs:
      - id: "#step1.message"
        valueFrom: "hello from the workflow"
    outputs: []
