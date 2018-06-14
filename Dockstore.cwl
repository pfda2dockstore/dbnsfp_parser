baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: dbnsfp_parser
inputs:
  Chr:
    default: '4'
    doc: ''
    inputBinding:
      position: 4
      prefix: --Chr
    type: string
  ENSG:
    default: ENSG00000118762
    doc: ''
    inputBinding:
      position: 3
      prefix: --ENSG
    type: string
  dbnsfp:
    doc: ''
    inputBinding:
      position: 1
      prefix: --dbnsfp
    type: File
  dbnsfp_parser:
    doc: ''
    inputBinding:
      position: 2
      prefix: --dbnsfp_parser
    type: File
label: dbNSFP parser
outputs:
  dbNSFP_OUT:
    doc: ''
    outputBinding:
      glob: dbNSFP_OUT/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/dbnsfp_parser:26
s:author:
  class: s:Person
  s:name: Vladimir Gainullin
