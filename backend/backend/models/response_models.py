from pydantic import BaseModel
from typing import Any, Dict, List

class Header(BaseModel):
    statusCode: int
    desc: str

class Data(BaseModel):
    data: List[Dict[str, Any]]

class ResponseModel(BaseModel):
    header: Header
    data: Data