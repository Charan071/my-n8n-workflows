# My n8n Automation Projects

A portfolio of automation workflows built with **n8n**, integrating tools like **Gmail API**, **Google Gemini**, **Slack**, **Jira**, **Pinecone**, **OpenAI**, and **Explorium**.  
Each project demonstrates practical use of AI and workflow automation for business processes.

---

## 📂 Projects Overview

### 1. [AI Inbox Automation](./AI%20Inbox%20automation)

![AI Email Inbox Agent](./AI%20Inbox%20automation/AI%20Email%20inbox%20AGENT.png)

Automates email inbox tasks using **n8n + Google Gemini + Gmail API**.  
- **Purpose:** Streamline email triage and auto-responses using AI  
- **Key Tools:** n8n, Gmail API, Google Gemini  
- **Contents:** Workflow diagram, JSON file, setup instructions  
- **Features:** Email classification, auto-responses, priority detection

[📖 View Documentation](./AI%20Inbox%20automation/README.md)

---

### 2. [Employee Onboarding Agent](./Employee%20Onbarding%20Agent)

![HR Onboarding Agent](./Employee%20Onbarding%20Agent/HR%20Onbaording%20Agent.jpeg)

Automates employee onboarding via **Slack, Jira, and Microsoft Entra ID**.  
- **Purpose:** Simplify onboarding tasks, notifications, and task management  
- **Key Tools:** n8n, Slack, Jira, Microsoft Entra ID  
- **Contents:** Workflow diagram, configuration guide  
- **Features:** Account provisioning, automated notifications, task creation

[📖 View Documentation](./Employee%20Onbarding%20Agent/README.md)

---

### 3. [Lead Enrichment Automation](./Lead%20Enrichment%20automation)

Enriches leads with business intelligence using **n8n + Explorium + Google Sheets**.  
- **Purpose:** Automatically enhance lead data with company and contact information  
- **Key Tools:** n8n, Explorium API, Google Sheets  
- **Contents:** Workflow JSON, GCP credentials template, setup guide  
- **Features:** Lead validation, data enrichment, automated storage

[📖 View Documentation](./Lead%20Enrichment%20automation/README.md)

---

### 4. [RAG Agents](./RAG%20Agents)

#### AI Assistant Chatbot
![AI Assistant Chatbot](./RAG%20Agents/AI%20Assistant%20Chatbot.jpeg)

#### RAG Agent Architecture
![RAG Agent](./RAG%20Agents/RAG%20Agent.jpeg)

**Retrieval-Augmented Generation workflows** using **n8n + Pinecone + OpenAI**.  
- **Purpose:** Build AI assistants with custom knowledge bases for accurate Q&A  
- **Key Tools:** n8n, Pinecone, OpenAI, LangChain  
- **Contents:** Multiple workflow diagrams, JSON file, setup instructions  
- **Features:** Vector search, context-aware responses, document ingestion

[📖 View Documentation](./RAG%20Agents/README.md)

---

## 🚀 Quick Start Guide

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
- Copy the workflow JSON file (available in most folders)
- Open your n8n instance
- Go to **Workflows** → **Import from File**
- Upload the JSON file
- Configure credentials as described in each folder's README

### 4. Configure Credentials
Each workflow requires specific API credentials:
- **Gmail API** (OAuth2)
- **Google Gemini** API key
- **Slack** Bot token
- **Jira** API token
- **Microsoft Entra ID** (OAuth2)
- **Explorium** API key
- **Google Sheets** service account
- **Pinecone** API key
- **OpenAI** API key

Refer to individual project READMEs for detailed setup instructions.

---

## 🛠️ Prerequisites

### General Requirements
- **n8n instance** (self-hosted or cloud) - [Get n8n](https://n8n.io)
- **Node.js** v18+ (for self-hosted n8n)
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
│   ├── AI Email inbox AGENT.png           # Workflow diagram
│   ├── Email task routing agent.json      # n8n workflow
│   └── README.md                          # Documentation
├── Employee Onbarding Agent/
│   ├── HR Onbaording Agent.jpeg           # Workflow diagram
│   └── README.md                          # Documentation
├── Lead Enrichment automation/
│   ├── Lead Enrichment with Explorium.json # n8n workflow
│   ├── GCP_creds.json                     # Credentials template
│   └── README.md                          # Documentation
├── RAG Agents/
│   ├── AI Assistant Chatbot.jpeg          # Chatbot diagram
│   ├── RAG Agent.jpeg                     # RAG architecture
│   ├── Aivara-rag.json                    # n8n workflow
│   └── README.md                          # Documentation
├── .gitignore                             # Git ignore rules
└── README.md                              # This file
```

---

## 🎯 Use Cases by Industry

### 🏢 Business Operations
- **Email Management**: AI-powered inbox automation
- **HR Processes**: Streamlined employee onboarding
- **Sales Enablement**: Automated lead enrichment

### 🤖 AI-Powered Solutions
- **Intelligent Chatbots**: Custom knowledge base assistants
- **Document Q&A**: RAG-based information retrieval
- **Context-Aware AI**: Grounded responses without hallucinations

### 🔗 Integration Examples
- **Gmail** ↔ **Google Gemini** (Email AI)
- **Slack** ↔ **Jira** ↔ **Entra ID** (Onboarding)
- **Explorium** ↔ **Google Sheets** (Lead Enrichment)
- **Pinecone** ↔ **OpenAI** (RAG Agents)

---

## 🔐 Security Best Practices

1. **Never commit sensitive credentials** to GitHub
2. Use **n8n's credential management** system
3. Store API keys in **environment variables**
4. Add credential files to `.gitignore` (already configured)
5. Use **OAuth2** where possible instead of API keys
6. Regularly **rotate credentials** and tokens
7. Implement **webhook authentication** for public endpoints
8. Enable **2FA** on all service accounts
9. Review **API permissions** regularly
10. Monitor **access logs** for suspicious activity

---

## 📊 Performance & Cost Optimization

### Workflow Optimization
- Use **batch processing** for large datasets
- Implement **error handling** and retry logic
- Monitor **API rate limits** to avoid throttling
- Optimize **chunk sizes** for RAG workflows (500-1000 tokens)
- Cache frequently accessed data
- Use **n8n's queue mode** for high-volume workflows

### Cost Management
- **OpenAI**: Monitor token usage, use appropriate models
- **Pinecone**: Optimize vector dimensions and queries
- **Gmail API**: Stay within free tier quotas
- **Explorium**: Track enrichment costs per lead
- Set up **usage alerts** for all APIs

---

## 🤝 Contributing

Contributions are welcome! If you'd like to improve these workflows:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-improvement`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-improvement`)
5. Open a Pull Request

### Contribution Guidelines
- Add comprehensive documentation for new workflows
- Include workflow diagrams (screenshots or exported images)
- Test workflows thoroughly before submitting
- Follow existing naming conventions
- Update README files accordingly

---

## 📧 Support & Resources

### Official Documentation
- [n8n Official Docs](https://docs.n8n.io) - Workflow automation
- [n8n Community Forum](https://community.n8n.io) - Community support
- [n8n YouTube Channel](https://www.youtube.com/c/n8n-io) - Video tutorials

### API Documentation
- [Gmail API](https://developers.google.com/gmail/api) - Email integration
- [Google Gemini](https://ai.google.dev/docs) - AI models
- [Slack API](https://api.slack.com) - Team communication
- [Jira API](https://developer.atlassian.com/cloud/jira/platform/rest/v3) - Project management
- [Microsoft Graph](https://docs.microsoft.com/en-us/graph) - Entra ID integration
- [Explorium API](https://www.explorium.ai/docs) - Data enrichment
- [Pinecone API](https://docs.pinecone.io) - Vector database
- [OpenAI API](https://platform.openai.com/docs) - LLM models

### Get Help
- **GitHub Issues**: Report bugs or request features
- **Discussions**: Share ideas and ask questions
- **Email**: [Your contact email]

---

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

---

## 🌟 Acknowledgments

Built with amazing tools and services:
- [n8n](https://n8n.io) - Workflow Automation Platform
- [OpenAI](https://openai.com) - GPT Models & Embeddings
- [Pinecone](https://www.pinecone.io) - Vector Database
- [Google Cloud](https://cloud.google.com) - Cloud Services (Gmail, Gemini)
- [Explorium](https://www.explorium.ai) - Lead Enrichment
- [Microsoft](https://www.microsoft.com) - Entra ID, Azure
- [Atlassian](https://www.atlassian.com) - Jira
- [Slack](https://slack.com) - Team Communication

---

## 💡 Future Roadmap

- [ ] Add CI/CD pipeline for automated workflow deployment
- [ ] Create workflow templates for common use cases
- [ ] Add comprehensive video tutorials for each workflow
- [ ] Build web dashboard for workflow monitoring
- [ ] Implement multi-tenant workflow examples
- [ ] Add monitoring and alerting workflows
- [ ] Create Docker Compose setup for easy deployment
- [ ] Add unit tests for workflow components
- [ ] Implement workflow versioning strategy
- [ ] Add more AI integrations (Anthropic Claude, Cohere, etc.)

---

## 📈 Workflow Statistics

- **Total Workflows**: 4+ production-ready automations
- **Integrations**: 10+ services (Gmail, Slack, Jira, OpenAI, etc.)
- **Documentation**: Comprehensive guides for each workflow
- **Use Cases**: Email automation, HR, Sales, AI assistants

---

## 🎓 Learning Resources

### For Beginners
- Start with the **AI Inbox Automation** - simplest workflow
- Learn n8n basics from [n8n Academy](https://academy.n8n.io)
- Understand API concepts and authentication

### For Advanced Users
- Explore **RAG Agents** for AI/ML integration
- Study **Lead Enrichment** for data pipeline concepts
- Build custom nodes for n8n

### Recommended Reading
- [n8n Best Practices](https://docs.n8n.io/hosting/best-practices/)
- [API Integration Patterns](https://docs.n8n.io/integrations/)
- [RAG Architecture Guide](https://www.pinecone.io/learn/retrieval-augmented-generation/)

---

**⭐ If you find these workflows helpful, please star this repository!**

**🔔 Watch this repo to get notified of new workflows and updates**

---

<div align="center">

Made with ❤️ using [n8n](https://n8n.io)

[Report Bug](https://github.com/Charan071/my-n8n-workflows/issues) · [Request Feature](https://github.com/Charan071/my-n8n-workflows/issues) · [Contribute](https://github.com/Charan071/my-n8n-workflows/pulls)

</div>
