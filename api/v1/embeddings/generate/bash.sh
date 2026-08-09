# Get paper metadata
curl "https://arxiv.gg/api/v1/papers/1706.03762"

# Search papers (keyword)
curl "https://arxiv.gg/api/v1/search?q=transformer&limit=10"

# Semantic search (requires embeddings)
curl "https://arxiv.gg/api/v1/search/semantic?q=attention+mechanism&limit=10"

# Fetch paper with embedding generation
curl -X POST "https://arxiv.gg/api/v1/papers/2301.00001/fetch?embedding=true"

# Generate embedding for a paper
curl -X POST "https://arxiv.gg/api/v1/papers/1706.03762/embeddings"

# Get citation graph
curl "https://arxiv.gg/api/v1/papers/1706.03762/graph"

# Export as BibTeX
curl "https://arxiv.gg/api/v1/papers/1706.03762/export/bibtex"
