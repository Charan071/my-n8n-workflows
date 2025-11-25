# Lead Enrichment Automation

An intelligent lead enrichment workflow powered by **n8n**, **Explorium API**, and **Google Sheets** that automatically enhances lead data with valuable business intelligence and contact information.

## 🎯 Purpose

This workflow automates lead enrichment by:
- Receiving new leads from various sources (webhooks, forms, CRM)
- Validating and normalizing lead data
- Enriching leads with company and contact information via Explorium
- Appending enriched data to Google Sheets for sales team access
- Providing real-time lead intelligence for sales outreach
- Reducing manual research time and improving lead quality

## 🛠️ Key Technologies

- **n8n**: Workflow automation platform
- **Explorium API**: B2B data enrichment and intelligence
- **Google Sheets API**: Data storage and collaboration
- **Google Cloud Platform**: Authentication and credentials management

## 📋 Features

- 🔗 Webhook trigger for real-time lead capture
- ✅ Lead data validation and normalization
- 🔍 Automatic company and contact enrichment
- 📊 Google Sheets integration for data storage
- 🎯 Firmographic data enhancement
- 📧 Email verification and formatting
- 🏢 Company website and social profiles
- 📈 Revenue and employee count data

## 📁 Contents

- `Lead Enrichment with Explorium.json` - n8n workflow file
- `GCP_creds.json` - Google Cloud Platform credentials template
- `README.md` - This documentation file

## 🚀 Setup Instructions

### Prerequisites

1. **n8n instance** (cloud or self-hosted)
2. **Explorium account** with API access
3. **Google Cloud Project** with Sheets API enabled
4. **Google Sheets** spreadsheet for lead storage

### Configuration Steps

1. **Explorium Setup:**
   - Sign up for Explorium account
   - Obtain API key from dashboard
   - Note your workspace ID
   - Configure Explorium credentials in n8n

2. **Google Sheets Setup:**
   - Create a new Google Sheet for leads
   - Note the Sheet ID from the URL
   - Create headers: email, name, company, website, enriched_data, etc.

3. **Google Cloud Platform:**
   - Create a new project or use existing
   - Enable Google Sheets API
   - Create service account
   - Download credentials JSON file
   - Share Google Sheet with service account email

4. **n8n Configuration:**
   - Import `Lead Enrichment with Explorium.json`
   - Update webhook path (or remove if using different trigger)
   - Configure Google Sheets credentials using GCP_creds.json
   - Add Explorium API credentials
   - Update Sheet ID in Google Sheets nodes

## 📊 Workflow Overview

1. **Lead Webhook**: Receives new lead data via HTTP POST
2. **Normalize Lead**: Cleans and standardizes lead information
   - Formats email addresses
   - Parses full names into first/last
   - Normalizes company names and websites
3. **Valid Lead Check**: Validates required fields (email)
4. **Explorium Enrichment**: Calls Explorium API to enrich lead data
   - Company information
   - Contact details
   - Firmographic data
   - Social profiles
5. **Format Data**: Prepares enriched data for Google Sheets
6. **Append to Sheet**: Writes enriched lead to Google Sheets

## 🔧 Customization

### Modify the workflow to:
- Add additional data validation rules
- Integrate with CRM systems (Salesforce, HubSpot)
- Send Slack notifications for high-value leads
- Implement lead scoring logic
- Add email verification services
- Create multiple enrichment providers (fallback chain)

### Explorium Data Points:
- Company name and domain
- Industry and sector
- Revenue and funding
- Employee count
- Technologies used
- Social media profiles
- Contact information
- Location and headquarters

## 📝 Input Format

```json
{
  "email": "john.doe@company.com",
  "name": "John Doe",
  "company": "Acme Inc",
  "website": "https://acme.com",
  "source": "webform"
}
```

## 📤 Output Format

Enriched lead data written to Google Sheets:
- Original lead data (email, name, company)
- Enriched company data (revenue, employees, industry)
- Contact information (phone, LinkedIn, title)
- Firmographic data
- Timestamp and source tracking

## 🔐 Security Considerations

- Store API keys securely in n8n credentials (never commit `GCP_creds.json` with real data)
- Use service accounts with minimal required permissions
- Implement webhook authentication (API key, signature verification)
- Rotate API keys regularly
- Monitor API usage and rate limits
- Ensure GDPR compliance for data handling

## 📊 Metrics to Track

- Lead enrichment success rate
- API response times
- Data quality improvements
- Cost per enriched lead
- Sales conversion rates on enriched vs. non-enriched leads

## ⚠️ Important Notes

- **GCP_creds.json**: This file should contain your actual Google Cloud service account credentials. Add it to `.gitignore` to prevent committing sensitive data
- Explorium has API rate limits - implement error handling
- Test with sample data before processing production leads
- Regularly validate enrichment accuracy
- Monitor costs associated with API usage

## 📧 Support

For issues or questions, refer to:
- [n8n Documentation](https://docs.n8n.io)
- [Explorium API Documentation](https://www.explorium.ai/docs)
- [Google Sheets API Documentation](https://developers.google.com/sheets/api)

## 💡 Future Enhancements

- Implement multiple enrichment providers
- Add AI-powered lead scoring
- Create email templates based on enriched data
- Integrate with marketing automation platforms
- Build lead deduplication logic
- Add real-time lead routing to sales reps
- Implement progressive enrichment over time
