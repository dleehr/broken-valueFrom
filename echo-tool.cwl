cwlVersion: cwl:draft-3
class: CommandLineTool
inputs:
  - id: "#scattered_message"
    type: string
    inputBinding:
      position: 2
  - id: "#message"
    type: string
    inputBinding:
      position: 1
outputs: []
baseCommand: echo
