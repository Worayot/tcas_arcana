from fastapi import FastAPI
from models.response_models import Data, Header, ResponseModel
from models.scores import ScoreModel
from modules.score_mapper import ScoreMapper

import pandas as pd
import os
import subprocess

app = FastAPI()

# Ensure file exists
if not os.path.exists("assets/programs.csv"):
    subprocess.run(["bash", "download_file.sh"])

# Read and initialize mapper
programs_df = pd.read_csv("assets/programs.csv")
mapper = ScoreMapper(programs_df)

@app.post("/map_scores", response_model=ResponseModel)
async def map_scores(req: ScoreModel):
    try:
        input_scores = req.dict()
        candidates_df = mapper.mapScore(input_scores)

        response = ResponseModel(
            header=Header(statusCode=200, desc="OK"),
            data=Data(data=candidates_df.to_dict(orient="records"))
        )
        return response
    except Exception as e:
        response = ResponseModel(
            header=Header(statusCode=500, desc=str(e)),
            data=Data(data=[])
        )
        return response
