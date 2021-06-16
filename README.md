# comcom-sentiment

### How To Use
#### prediction
To use the API, you must input ```key=text```and ```value=str```
- Example in the terminal
- ```curl -X POST "https://master-comcom-sentiment-pellto.endpoint.ainize.ai/predict" -H "Content-Type: application/json" -d "${Your Data}"```
- ```curl -X POST "https://master-comcom-sentiment-pellto.endpoint.ainize.ai/predict" -H "Content-Type: application/json" -d "@data.json"```
- ```curl -X POST "https://master-comcom-sentiment-pellto.endpoint.ainize.ai/predict" -H "Content-Type: application/json" -d '{'text':"I Love you"}'```
- ```data.json``` = ```{"text":"I Love you"}```
#### return
- ```{"result": {"negative": "0.11431766", "positive": "0.8856823"}}```
