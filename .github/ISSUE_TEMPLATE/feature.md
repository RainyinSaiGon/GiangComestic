name: Feature Request
description: Suggest an idea for this project
title: "[FEATURE] "
labels: ["enhancement", "triage"]
assignees: []

body:
  - type: markdown
    attributes:
      value: |
        Thanks for suggesting an idea! Please describe the feature request below.

  - type: textarea
    id: description
    attributes:
      label: Description
      description: Is your feature request related to a problem? Please describe.
      placeholder: Describe the feature...
    validations:
      required: true

  - type: textarea
    id: solution
    attributes:
      label: Proposed Solution
      description: Describe the solution you'd like
    validations:
      required: true

  - type: textarea
    id: alternatives
    attributes:
      label: Alternative Solutions
      description: Describe any alternative solutions or features you've considered.

  - type: textarea
    id: additional
    attributes:
      label: Additional Context
      description: Add any other context or screenshots here.

