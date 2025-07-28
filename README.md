# Adobe-Round1a


# 📄 Universal PDF Structure Extractor (Adobe Round1A)

This project extracts structured headings and font-based hierarchy from any PDF file using font analysis, proximity rules, and block consolidation. It's designed as a clean, fast, and portable tool, fully containerized with Docker.

---

## 🚀 Features

- 🔍 PDF structure analysis using heading hierarchy (H1, H2, H3...)
- 🎯 Font-size and weight-based title detection
- ✂️ Smart block consolidation to reduce fragmentation
- 📐 Layout-aware extraction (font proximity + separator detection)
- 🧠 Outputs clean JSON with heading hierarchy
- 🐳 Dockerized for easy sharing and reproducibility

---

## 📁 Project Structure

```
.
├── 1a.py                  # Main script to run analysis
├── Dockerfile             # Docker image definition
├── requirements.txt       # Python dependencies
├── pdfs/                  # Input PDFs go here
├── outputs/               # Extracted results (JSON)
├── cache/                 # Temporary cached data
├── .dockerignore          # Docker ignore rules
└── README.md              # You're reading it!
```

---

## 🧰 Requirements

- Docker (installed and running) – [Get Docker](https://docs.docker.com/get-docker/)
- Git (optional, to clone this repo)
- PDF files inside `pdfs/` folder

---

## 🐳 Running with Docker

### 📦 1. Clone the Repository

```bash
git clone https://github.com/UjjwalAmrit/Adobe-Round1a.git
cd Adobe-Round1a
```

### 🛠️ 2. Build the Docker Image

```bash
docker build -t pdf-extractor .
```

### 📂 3. Add PDF Files

Place all PDFs you want to analyze into the `pdfs/` folder.

### ▶️ 4. Run the Extractor

```bash
docker run --rm ^
  -v "${PWD}/pdfs:/app/pdfs" ^
  -v "${PWD}/cache:/app/cache" ^
  -v "${PWD}/outputs:/app/outputs" ^
  pdf-extractor
```

> 📁 The results will be saved inside the `outputs/` folder as JSON files.

---

## 🧪 Sample JSON Output

```json
{
  "title": "GOVERNMENT POLICIES AND INTERVENTIONS...",
  "outline": [
    { "level": "H1", "text": "GOVERNMENT POLICIES AND INTERVENTIONS...", "page": 2 },
    { "level": "H2", "text": "1. Public Policy", "page": 3 },
    { "level": "H3", "text": "1.1. Process of Public Policy Formation", "page": 3 }
  ]
}
```

---

## 🌐 Docker Hub (Optional)

If you've pushed your image:

```bash
docker pull yourdockerhubusername/pdf-extractor
```

---

## 🤝 Contribution

PRs are welcome! Fork this repo, improve it, and open a pull request.

---

## 📄 License

This project is licensed under the MIT License.

---

> Made with 💙 by [Ujjwal Amrit](https://github.com/UjjwalAmrit)
