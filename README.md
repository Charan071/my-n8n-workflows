# My n8n Automation Projects

A portfolio of automation workflows built with **n8n**, integrating tools like **Gmail API**, **Google Gemini**, **Slack**, **Jira**, **Pinecone**, **OpenAI**, and **Explorium**.  
Each project demonstrates practical use of AI and workflow automation for business processes.

---

## 📂 Projects Overview

### 1. [AI Inbox Automation](./AI%20Inbox%20automation)
Automates email inbox tasks using **n8n + Google Gemini + Gmail API**.  
- **Purpose:** Streamline email triage and auto-responses using AI  
- **Key Tools:** n8n, Gmail API, Google Gemini  
- **Contents:** Workflow diagram, setup instructions  
- **Features:** Email classification, auto-responses, priority detection

### 2. [Employee Onboarding Agent](./Employee%20Onbarding%20Agent)
Automates employee onboarding via **Slack, Jira, and Microsoft Entra ID**.  
- **Purpose:** Simplify onboarding tasks, notifications, and task management  
- **Key Tools:** n8n, Slack, Jira, Microsoft Entra ID  
- **Contents:** Workflow diagram, configuration guide  
- **Features:** Account provisioning, automated notifications, task creation

### 3. [Lead Enrichment Automation](./Lead%20Enrichment%20automation)
Enriches leads with business intelligence using **n8n + Explorium + Google Sheets**.  
- **Purpose:** Automatically enhance lead data with company and contact information  
- **Key Tools:** n8n, Explorium API, Google Sheets  
- **Contents:** Workflow JSON, GCP credentials template, setup guide  
- **Features:** Lead validation, data enrichment, automated storage

### 4. [RAG Agents](./RAG%20Agents)
**Retrieval-Augmented Generation workflows** using **n8n + Pinecone + OpenAI**.  
- **Purpose:** Build AI assistants with custom knowledge bases for accurate Q&A  
- **Key Tools:** n8n, Pinecone, OpenAI, LangChain  
- **Contents:** Multiple workflow diagrams (chatbot, RAG architecture), setup instructions  
- **Features:** Vector search, context-aware responses, document ingestion

---

## 🚀 How to Use

### 1. Clone the Repository
```bash
git clone https://github.com/Charan071/my-n8n-workflows.git
cd my-n8n-workflows
```

### 2. Choose a Workflow
Navigate to any project folder to view detailed documentation:
```bash
cd "AI Inbox automation"
# or
cd "Employee Onbarding Agent"
# or
cd "Lead Enrichment automation"
# or
cd "RAG Agents"
```

### 3. Import to n8n
- Copy the workflow JSON (if available)
- Open your n8n instance
- Go to **Workflows** → **Import from File** or **Import from URL**
- Paste the JSON or upload the file
- Configure credentials and connections as described in each folder's README

### 4. Configure Credentials
Each workflow requires specific API credentials:
- Gmail API (OAuth2)
- Google Gemini API key
- Slack Bot token
- Jira API token
- Microsoft Entra ID (OAuth2)
- Explorium API key
- Google Sheets service account
- Pinecone API key
- OpenAI API key

Refer to individual project READMEs for detailed setup instructions.

---

## 🛠️ Prerequisites

### General Requirements
- **n8n instance** (self-hosted or cloud)
- **Node.js** v16+ (for self-hosted n8n)
- API access to respective services

### Recommended Tools
- **Docker** (for containerized n8n deployment)
- **Git** for version control
- **Postman** or **cURL** for API testing

---

## 📚 Project Structure

```
my-n8n-workflows/
├── AI Inbox automation/
│   ├── AI Email inbox AGENT.png
│   └── README.md
├── Employee Onbarding Agent/
│   ├── HR Onbaording Agent.jpeg
│   └── README.md
├── Lead Enrichment automation/
│   ├── Lead Enrichment with Explorium.json
│   ├── GCP_creds.json
│   └── README.md
├── RAG Agents/
│   ├── AI Assistant Chatbot.jpeg
│   ├── RAG Agent.jpeg
│   └── README.md
└── README.md (this file)
```

---

## 🎯 Use Cases

### Business Automation
- Email management and triage
- Lead enrichment and qualification
- Employee onboarding automation

### AI-Powered Solutions
- Intelligent chatbots with custom knowledge
- AI-driven email responses
- Semantic search and document Q&A

### Integration Examples
- Gmail ↔ Google Gemini
- Slack ↔ Jira ↔ Entra ID
- Explorium ↔ Google Sheets
- Pinecone ↔ OpenAI

---

## 🔐 Security Best Practices

1. **Never commit sensitive credentials** to GitHub
2. Use **n8n's credential management** system
3. Store API keys in **environment variables**
4. Add `GCP_creds.json` and similar files to `.gitignore`
5. Use **OAuth2** where possible instead of API keys
6. Regularly **rotate credentials**
7. Implement **webhook authentication** for public endpoints

---

## 📊 Performance Tips

- Use **batch processing** for large datasets
- Implement **error handling** and retry logic
- Monitor **API rate limits**
- Optimize **chunk sizes** for RAG workflows
- Cache frequently accessed data
- Use **n8n's queue mode** for high-volume workflows

---

## 🤝 Contributing

Contributions are welcome! If you'd like to improve these workflows:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/improvement`)
3. Commit your changes (`git commit -m 'Add new feature'`)
4. Push to the branch (`git push origin feature/improvement`)
5. Open a Pull Request

---

## 📧 Support & Resources

### Documentation
- [n8n Official Docs](https://docs.n8n.io)
- [n8n Community Forum](https://community.n8n.io)
- [n8n YouTube Channel](https://www.youtube.com/c/n8n-io)

### API Documentation
- [Gmail API](https://developers.google.com/gmail/api)
- [Google Gemini](https://ai.google.dev/docs)
- [Slack API](https://api.slack.com)
- [Jira API](https://developer.atlassian.com/cloud/jira/platform/rest/v3)
- [Microsoft Graph](https://docs.microsoft.com/en-us/graph)
- [Explorium API](https://www.explorium.ai/docs)
- [Pinecone API](https://docs.pinecone.io)
- [OpenAI API](https://platform.openai.com/docs)

### Contact
- **GitHub Issues**: Report bugs or request features
- **Discussions**: Share ideas and ask questions

---

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

---

## 🌟 Acknowledgments

Built with:
- [n8n](https://n8n.io) - Workflow Automation
- [OpenAI](https://openai.com) - AI Models
- [Pinecone](https://www.pinecone.io) - Vector Database
- [Google Cloud](https://cloud.google.com) - Cloud Services
- [Explorium](https://www.explorium.ai) - Data Enrichment

---

## 💡 Future Roadmap

- [ ] Add webhook security examples
- [ ] Implement CI/CD for workflow deployment
- [ ] Create workflow templates for common use cases
- [ ] Add video tutorials for each workflow
- [ ] Build web interface for easier workflow management
- [ ] Add monitoring and alerting workflows
- [ ] Create multi-tenant workflow examples

---

**⭐ If you find these workflows helpful, please star this repository!**
