# 🚗 Car Insurance Prediction - MLOps Pipeline

This project is an end-to-end **MLOps pipeline** for predicting car insurance risk using machine learning. It incorporates key DevOps and MLOps practices including CI/CD, modular design, and deployment readiness.

## 📦 Project Structure

```
mlops_car_insurance/
├── data_ingestion.py         # Fetch data from MongoDB
├── data_transformation.py    # Preprocess and clean data
├── data_validation.py        # Validate input schema and missing values
├── model_trainer.py          # Train machine learning models
├── model_evaluation.py       # Evaluate model performance
├── model_pusher.py           # Save and push the best model for deployment
```

## 🧠 Key Features

- **Data Source**: Fetches data from MongoDB
- **Pipeline Components**:
  - Data Ingestion
  - Data Transformation
  - Data Validation
  - Model Training
  - Model Evaluation
  - Model Pusher (Saving best model)
- **CI/CD Pipeline**: Fully integrated for testing and model deployment
- **Logging**: Implemented using custom logger for debugging and monitoring
- **Containerized**: Docker setup ready for deployment
- **Deployment Ready**: Designed for deployment on AWS EC2 (free-tier limit faced)

## 🔧 Technologies Used

- Python
- Scikit-learn
- Pandas, NumPy
- MongoDB
- Docker
- GitHub Actions (CI/CD)
- AWS EC2 (deployment-ready)

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/mlops_car_insurance.git
cd mlops_car_insurance
```

### 2. Set Up Environment

```bash
pip install -r requirements.txt
```

### 3. Configure MongoDB URI

Update your `.env` or config file with:

```
MONGO_DB_URI=mongodb+srv://<username>:<password>@cluster.mongodb.net/<your-db>
```

### 4. Run Pipeline Locally

```bash
python data_ingestion.py
python data_transformation.py
python data_validation.py
python model_trainer.py
python model_evaluation.py
python model_pusher.py
```

### 5. Run in Docker

```bash
docker build -t car-insurance-mlops .
docker run -p 8000:8000 car-insurance-mlops
```

## 🧪 CI/CD

- GitHub Actions used for:
  - Linting and testing
  - Model training
  - Docker build & push
- Deployment was planned on AWS EC2, but paused due to payment requirements.

## 📌 Current Limitations

- AWS EC2 deployment pending due to paid account requirement.
- GUI/API layer not yet added.

## ✅ To-Do

- [ ] Add FastAPI
- [ ] Complete AWS EC2 deployment

## 👨‍💻 Author

- Chayan Ghosh

## 📄 License

This project is licensed under the MIT License.
