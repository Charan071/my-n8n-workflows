# RAG Agents (Retrieval-Augmented Generation)

## Workflow Diagrams

### AI Assistant Chatbot
![AI Assistant Chatbot Workflow](./AI%20Assistant%20Chatbot.jpeg)

### RAG Agent Architecture
![RAG Agent Workflow](./RAG%20Agent.jpeg)

A collection of intelligent AI agents built with **n8n**, **Pinecone**, and **OpenAI** that leverage Retrieval-Augmented Generation (RAG) to provide accurate, context-aware responses based on custom knowledge bases.

## 📸 Workflow Previews

### RAG Architecture
![RAG Agent Workflow](./RAG%20Agent.jpeg)
*Core RAG workflow showing document ingestion and query processing*

### AI Assistant Chatbot
![AI Assistant Chatbot](./AI%20Assistant%20Chatbot.jpeg)
*Complete conversational AI assistant with RAG integration*

## 🎯 Purpose

These RAG workflows enable:
- Building AI chatbots with custom knowledge bases
- Accurate question-answering from private documents
- Context-aware AI assistance for specific domains
- Reducing AI hallucinations through grounded responses
- Creating intelligent assistants for customer support, documentation, or internal knowledge

## 🛠️ Key Technologies

- **n8n**: Workflow automation platform
- **Pinecone**: Vector database for semantic search
- **OpenAI**: Language models (GPT-4, GPT-3.5) and embeddings
- **LangChain** (optional): Framework for building LLM applications

## 📋 Features

- 📚 Custom knowledge base creation from documents
- 🔍 Semantic search using vector embeddings
- 🤖 AI-powered conversational interface
- 💬 Context-aware response generation
- 📝 Support for multiple document formats (PDF, text, markdown)
- 🔄 Continuous learning with knowledge base updates
- 🎯 Accurate, grounded responses with source attribution

## 📁 Contents

- `AI Assistant Chatbot.jpeg` - Visual workflow diagram for chatbot implementation (shown above)
- `RAG Agent.jpeg` - Visual workflow diagram for RAG architecture (shown above)
- `Aivara-rag.json` - n8n workflow file
- `README.md` - This documentation file

## 🚀 Setup Instructions

### Prerequisites

1. **n8n instance** (cloud or self-hosted)
2. **Pinecone account** with vector database created
3. **OpenAI API key** with access to embeddings and chat models
4. **Document repository** (Google Drive, local files, or other sources)

### Configuration Steps

1. **Pinecone Setup:**
   - Create a Pinecone account
   - Create a new index with appropriate dimensions (1536 for OpenAI embeddings)
   - Note your API key and environment
   - Configure Pinecone credentials in n8n

2. **OpenAI Setup:**
   - Obtain OpenAI API key
   - Ensure access to `text-embedding-ada-002` and GPT models
   - Configure OpenAI credentials in n8n

3. **Document Preparation:**
   - Gather documents for your knowledge base
   - Organize documents by topic or category
   - Convert to supported formats (text, PDF, markdown)

4. **Workflow Configuration:**
   - Import RAG workflows into n8n
   - Configure embedding workflow to process documents
   - Set up query workflow for user interactions
   - Connect to your frontend or chat interface

## 📊 Workflow Components

### 1. **Document Ingestion Workflow**
- Load documents from source
- Split documents into chunks (optimal size: 500-1000 tokens)
- Generate embeddings using OpenAI
- Store embeddings in Pinecone with metadata

### 2. **Query Processing Workflow**
- Receive user query (webhook, chat interface, API)
- Generate query embedding
- Search Pinecone for relevant document chunks
- Retrieve top-k most similar chunks (k=3-5)
- Construct context-enriched prompt
- Generate response using OpenAI
- Return response with optional source citations

### 3. **AI Assistant Chatbot**
- Maintains conversation history
- Provides multi-turn dialogue support
- Integrates RAG for knowledge retrieval
- Handles fallback responses
- Can be integrated with Slack, Discord, or web chat

## 🔧 Architecture Overview

```
User Query → Query Embedding → Vector Search (Pinecone) → 
Context Retrieval → Prompt Construction → LLM (OpenAI) → Response
```

## 🎛️ Customization Options

### Modify the workflows to:
- Adjust chunk size and overlap for document processing
- Change embedding models (OpenAI, Cohere, etc.)
- Tune similarity thresholds for retrieval
- Customize system prompts for different use cases
- Add conversation memory for multi-turn dialogues
- Implement hybrid search (keyword + semantic)
- Add content filtering or moderation
- Create specialized agents for different departments

### Use Cases:
- **Customer Support**: Answer FAQs from knowledge base
- **Internal Documentation**: Help employees find information
- **Product Assistant**: Provide product-specific guidance
- **Research Assistant**: Query academic papers or reports
- **Code Documentation**: Search technical documentation

## 📝 Sample Queries

- "What is our refund policy?"
- "How do I configure the authentication module?"
- "What were the Q3 2024 revenue figures?"
- "Explain the process for submitting expense reports"

## ⚙️ Advanced Features

### Chunking Strategies:
- Fixed-size chunks (500-1000 tokens)
- Recursive text splitting
- Semantic chunking (split by topic)
- Overlap between chunks (50-100 tokens)

### Retrieval Optimization:
- Re-ranking retrieved chunks
- Hybrid search (dense + sparse)
- Metadata filtering (date, author, category)
- Query expansion and rephrasing

### Response Enhancement:
- Source citation and attribution
- Confidence scores
- Follow-up question suggestions
- Multi-document synthesis

## 🔐 Security Considerations

- Store API keys securely in n8n credentials
- Implement access controls for sensitive knowledge bases
- Sanitize user inputs to prevent prompt injection
- Monitor usage and costs
- Implement rate limiting
- Ensure compliance with data privacy regulations

## 📊 Performance Metrics

- Response accuracy (human evaluation)
- Retrieval precision and recall
- Response latency
- API costs (OpenAI + Pinecone)
- User satisfaction scores

## ⚠️ Best Practices

1. **Document Quality**: Clean, well-structured documents improve RAG performance
2. **Chunk Size**: Balance between context and specificity (500-1000 tokens recommended)
3. **Top-k Selection**: Start with 3-5 chunks, adjust based on performance
4. **Prompt Engineering**: Craft clear system prompts with instructions
5. **Monitoring**: Track retrieval quality and response accuracy
6. **Costs**: Monitor token usage and optimize for efficiency

## 💰 Cost Considerations

- **OpenAI Embeddings**: ~$0.0001 per 1K tokens
- **OpenAI GPT-4**: ~$0.03 per 1K tokens (varies by model)
- **Pinecone**: Free tier available, scales with usage
- Optimize by caching common queries and batch processing documents

## 📧 Support

For issues or questions, refer to:
- [n8n Documentation](https://docs.n8n.io)
- [Pinecone Documentation](https://docs.pinecone.io)
- [OpenAI API Documentation](https://platform.openai.com/docs)
- [LangChain Documentation](https://python.langchain.com/docs) (if used)

## 💡 Future Enhancements

- Multi-modal RAG (images, videos, audio)
- Fine-tuning custom embedding models
- Implementing agentic RAG with tool use
- Adding graph-based knowledge representation
- Real-time knowledge base updates
- Multi-language support
- Federated search across multiple knowledge bases
- Integration with company-specific tools (Confluence, Notion, etc.)

## 📚 Additional Resources

- [RAG Best Practices Guide](https://www.pinecone.io/learn/retrieval-augmented-generation/)
- [Vector Database Comparison](https://www.pinecone.io/learn/vector-database/)
- [Prompt Engineering for RAG](https://www.promptingguide.ai/techniques/rag)
