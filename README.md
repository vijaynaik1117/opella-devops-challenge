# Opella DevOps Technical Challenge: Provision Azure Infrastructure with Terraform

## Objective

Showcase your skills in provisioning Azure infrastructure using Terraform, emphasizing reusable, secure, and maintainable Infrastructure as Code (IaC). This challenge will assess your ability to structure code effectively, manage resources across environments, and apply industry-standard practices using Azure, Terraform, and GitHub.

## Deliverables

1. Build a reusable Terraform module to deploy an Azure Virtual Network (VNET).
2. Use this module to create multiple environments in Azure (eg, Develoment and Production), adding a few additional resources of your choice (Blob).
3. Submit your work via one or many GitHub repositories, make them plublic and share the URL with us.
4. Make sure your code is clean. Propose tools to help you in this aspect.

Expect to spend about 2-3 hours on this. Deliverables should be public GitHub repositories (or shared with the evaluator).

---

## Requirements

### 1. Reusable Module Creation

**Task**: Create a Terraform module for provisioning an Azure VNET that can be reused across different setups.

- **Purpose**: This should deploy a VNET and related networking resources, designed with flexibility and security in mind.
- **Hints**:
  - Think about what configurations might need to change depending on where or how this is used.
  - Consider optional features that could enhance network security.
  - How might you label resources for better tracking?
  - What information would someone need in order to use this module? Bonus points if you automate documentation indicating how!
  - What outputs you would add and why?

### 2. Infrastructure Setup

**Task**: Create a repository and a GitHub pipeline to deploy multiple environments in Azure using your VNET module, plus a couple of additional resources.

- **Folder Structure**: Set up your code to handle a `dev` environment in one Azure region (e.g., `eastus`), with an eye toward scaling to other environments and regions later.

- **Hints**:
  - Argument why would you use Resource Groups or Subscriptions for multiple environments.
  - Include a virtual machine and one other resources (your choice—think about what’s useful in a dev setup).
  - Name and label resources to make the environment and region clear.
  - Avoid repeating values—how can you make this flexible?
  - What outputs might be useful and why?
  - Bonus points if you build a GitHub pipeline and explain the release lifecycle.

---

Good luck—we’re excited to see your work!