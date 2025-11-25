# Employee Onboarding Agent

![HR Onboarding Agent Workflow](./HR%20Onbaording%20Agent.jpeg)

An automated employee onboarding workflow built with **n8n** that integrates **Slack**, **Jira**, and **Microsoft Entra ID** (Azure AD) to streamline the new hire onboarding process.

## 📸 Workflow Preview

![HR Onboarding Agent Workflow](./HR%20Onbaording%20Agent.jpeg)

*Complete HR onboarding automation workflow diagram*

## 🎯 Purpose

This workflow automates the employee onboarding journey by:
- Creating onboarding tasks automatically when a new employee joins
- Sending welcome messages and notifications via Slack
- Creating and assigning Jira tickets for IT setup and HR tasks
- Managing user provisioning in Entra ID
- Tracking onboarding progress and milestones
- Ensuring consistent onboarding experience for all new hires

## 🛠️ Key Technologies

- **n8n**: Workflow automation platform
- **Slack**: Team communication and notifications
- **Jira**: Task and project management
- **Microsoft Entra ID**: Identity and access management
- **HR System Integration** (optional): Trigger from HRIS

## 📋 Features

- 🆕 Automated new hire workflow initiation
- 💬 Slack welcome messages and channel invitations
- 📋 Jira ticket creation for onboarding tasks
- 👤 Entra ID user provisioning and group assignments
- 📧 Automated email notifications to stakeholders
- 📊 Onboarding progress tracking
- 🔔 Reminder notifications for pending tasks

## 📁 Contents

- `HR Onbaording Agent.jpeg` - Visual workflow diagram (shown above)
- `README.md` - This documentation file

## 🚀 Setup Instructions

### Prerequisites

1. **n8n instance** (cloud or self-hosted)
2. **Slack workspace** with bot permissions
3. **Jira account** with API access
4. **Microsoft Entra ID** (Azure AD) with admin access
5. **HR system** or manual trigger method

### Configuration Steps

1. **Slack Setup:**
   - Create a Slack App in your workspace
   - Add required bot scopes (chat:write, channels:manage, users:read)
   - Install app to workspace and obtain bot token
   - Configure in n8n Slack credentials

2. **Jira Setup:**
   - Generate Jira API token
   - Note your Jira domain and project key
   - Configure Jira credentials in n8n
   - Create custom fields if needed

3. **Entra ID Setup:**
   - Register application in Azure portal
   - Grant required API permissions (User.ReadWrite.All, Group.ReadWrite.All)
   - Generate client secret
   - Configure OAuth2 credentials in n8n

4. **Workflow Configuration:**
   - Import workflow into n8n
   - Update trigger (webhook, schedule, or email)
   - Customize Slack message templates
   - Configure Jira ticket templates
   - Set up Entra ID user attributes

## 📊 Workflow Overview

1. **Trigger**: New hire data received (webhook, form, or HR system)
2. **Parse Data**: Extract employee information (name, email, department, start date)
3. **Create Entra ID Account**: Provision user in Azure AD with appropriate groups
4. **Send Slack Welcome**: Post welcome message to team channel
5. **Create Jira Tickets**: Generate tasks for IT, HR, and managers
6. **Assign Tasks**: Distribute tickets to responsible teams
7. **Schedule Follow-ups**: Set reminders for day 1, week 1, month 1 check-ins
8. **Log Activity**: Record onboarding completion status

## 🔧 Customization

### Modify the workflow to include:
- Company-specific onboarding checklists
- Department-specific task templates
- Custom Slack channels for different teams
- Additional integrations (Google Workspace, Office 365, etc.)
- Compliance and training module assignments

### Sample Jira Tickets Created:
- IT: Laptop setup and software installation
- IT: Email and system access provisioning
- HR: Benefits enrollment and documentation
- Manager: 1:1 meetings schedule
- Team: Buddy assignment and introduction

## 📝 Onboarding Timeline

- **Day -3**: Account creation and system provisioning
- **Day 1**: Welcome message and orientation tasks
- **Week 1**: Check-in and progress review
- **Month 1**: Feedback collection and adjustment

## 🔐 Security Considerations

- Store all API keys and tokens securely in n8n credentials
- Use service accounts with minimal required permissions
- Implement approval gates for sensitive actions
- Log all automated actions for audit purposes
- Regularly review access permissions

## 📊 Metrics to Track

- Time to complete onboarding
- Task completion rates
- Employee satisfaction scores
- System access provisioning time
- Compliance document completion

## 📧 Support

For issues or questions, refer to:
- [n8n Documentation](https://docs.n8n.io)
- [Slack API Documentation](https://api.slack.com)
- [Jira API Documentation](https://developer.atlassian.com/cloud/jira/platform/rest/v3)
- [Microsoft Graph API Documentation](https://docs.microsoft.com/en-us/graph)

## 💡 Future Enhancements

- Integration with learning management systems
- Automated equipment ordering
- Video onboarding session scheduling
- Compliance training tracking
- Offboarding workflow companion
