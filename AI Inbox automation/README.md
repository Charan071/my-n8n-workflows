# AI Email Inbox Agent

An intelligent email automation workflow that leverages **n8n**, **Gmail API**, and **Google Gemini** to automatically process, categorize, and respond to emails.

## 🎯 Purpose

This workflow automates email inbox management by:
- Monitoring incoming emails in real-time
- Using AI to analyze email content and intent
- Automatically categorizing emails (urgent, spam, action-required, etc.)
- Generating contextually appropriate AI-powered responses
- Streamlining email triage and reducing manual inbox management

## 🛠️ Key Technologies

- **n8n**: Workflow automation platform
- **Gmail API**: Email retrieval and sending
- **Google Gemini**: AI-powered email analysis and response generation

## 📋 Features

- ✉️ Automatic email fetching from Gmail
- 🤖 AI-driven email classification
- 📝 Smart auto-response generation
- 🔔 Priority email notifications
- 📊 Email categorization and tagging

## 📁 Contents

- `AI Email inbox AGENT.png` - Visual workflow diagram
- `README.md` - This documentation file

## 🚀 Setup Instructions

### Prerequisites

1. **n8n instance** (cloud or self-hosted)
2. **Google Cloud Project** with Gmail API enabled
3. **Google Gemini API** access

### Configuration Steps

1. **Gmail API Setup:**
   - Create OAuth 2.0 credentials in Google Cloud Console
   - Enable Gmail API
   - Configure OAuth consent screen

2. **n8n Configuration:**
   - Import the workflow into your n8n instance
   - Configure Gmail trigger node with your credentials
   - Set up Gmail OAuth connection

3. **Google Gemini Setup:**
   - Obtain Gemini API key from Google AI Studio
   - Add API key to n8n credentials

4. **Workflow Customization:**
   - Adjust email filters and categories
   - Customize AI prompts for your use case
   - Configure response templates

## 📊 Workflow Overview

1. **Trigger**: Gmail node monitors inbox for new emails
2. **Extract**: Parse email content, sender, and metadata
3. **Analyze**: Gemini AI analyzes email intent and priority
4. **Categorize**: Classify email into predefined categories
5. **Respond**: Generate and send appropriate responses (optional)
6. **Log**: Store processing results for tracking

## 🔧 Customization

Modify the AI prompts to adjust:
- Email classification criteria
- Response tone and style
- Priority determination logic
- Auto-response triggers

## 📝 Notes

- Ensure Gmail API quotas are sufficient for your email volume
- Test thoroughly before enabling auto-responses
- Review AI-generated responses periodically for quality
- Consider implementing human-in-the-loop for critical emails

## 🔐 Security Considerations

- Store all API keys securely in n8n credentials
- Use OAuth 2.0 for Gmail authentication
- Limit Gmail API scopes to minimum required permissions
- Regularly review workflow access logs

## 📧 Support

For issues or questions, refer to:
- [n8n Documentation](https://docs.n8n.io)
- [Gmail API Documentation](https://developers.google.com/gmail/api)
- [Google Gemini Documentation](https://ai.google.dev/docs)
