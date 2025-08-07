from typing import Dict, List
import pandas as pd
import ast

class ScoreMapper:
    def __init__(self, programsDf: pd.DataFrame):
        self.programsDf = programsDf.copy()
        self.programsDf['scores'] = self.programsDf['scores'].apply(ast.literal_eval)

    def mapScore(self, inputScore: Dict[str, float]) -> pd.DataFrame:
        outputScores: Dict[str, float] = {
            'a_lv_61': inputScore['A_Level_MATH1'],
            'a_lv_62': inputScore['A_Level_MATH2'],
            'a_lv_63': inputScore['A_Level_SCIENCE'],
            'a_lv_64': inputScore['A_Level_PHY'],
            'a_lv_65': inputScore['A_Level_CHEM'],
            'a_lv_66': inputScore['A_Level_BIO'],
            'a_lv_70': inputScore['A_Level_SOCIAL'],
            'a_lv_81': inputScore['A_Level_THAI'],
            'a_lv_82': inputScore['A_Level_ENG'],
            'a_lv_83': inputScore['A_Level_FRANCE'],
            'a_lv_84': inputScore['A_Level_GERMAN'],
            'a_lv_85': inputScore['A_Level_JAPANESE'],
            'a_lv_86': inputScore['A_Level_KOREAN'],
            'a_lv_87': inputScore['A_Level_CHINESE'],
            'a_lv_88': inputScore['A_Level_BALI'],
            'a_lv_89': inputScore['A_Level_SPAIN'],
            'cal_score_sum': -1,
            'cal_subject_name': -1,
            'cal_type': -1,
            'ged_score': -1,
            'gpa21': -1,
            'gpa22': -1,
            'gpa23': -1,
            'gpa24': -1,
            'gpa26': -1,
            'gpa28': -1,
            'gpax': inputScore['GPAX'],
            'priority_score': -1,
            'su001': -1,
            'su002': -1,
            'su003': -1,
            'su004': -1,
            'tgat': inputScore.get('TGAT', -1),
            'tgat1': inputScore['TGAT1'],
            'tgat2': inputScore['TGAT2'],
            'tgat3': inputScore['TGAT3'],
            'tpat1': inputScore['TPAT1'],
            'tpat11': -1,
            'tpat12': -1,
            'tpat13': -1,
            'tpat2': inputScore['TPAT2'],
            'tpat21': inputScore['TPAT21'],
            'tpat22': inputScore['TPAT22'],
            'tpat23': inputScore['TPAT23'],
            'tpat3': inputScore['TPAT3'],
            'tpat4': inputScore['TPAT4'],
            'tpat5': inputScore['TPAT5'],
            'tu001': -1,
            'tu002': -1,
            'tu003': -1,
            'tu004': -1,
            'tu005': -1,
            'tu061': -1,
            'tu062': -1,
            'tu071': -1,
            'tu072': -1,
            'tu081': -1,
            'tu082': -1,
            'vnet_51': -1,
            'vnet_514': -1,
        }

        candidates: List[dict] = []

        for _, row in self.programsDf.iterrows():
            scoreCriteria = row['scores']

            if any(outputScores.get(subject, -1) == -1 for subject in scoreCriteria):
                continue

            if row['est_min_score_regression'] in [0, -999] or row['min_score'] == row['max_score']:
                continue

            score = sum(
                outputScores[subject] * float(weight) * 0.01
                for subject, weight in scoreCriteria.items()
            )

            if score > float(row['est_min_score_regression']):
                candidates.append({
                    'program_id': row['program_id'],
                    'program_name_th': row['program_name_th'],
                    'estimated_min_score': row['est_min_score_regression'],
                    'your_score': score,
                    'lastyear_min_score': row['min_score'],
                    'lastyear_max_score': row['max_score'],
                    'distance': (
                        (score - float(row['est_min_score_regression'])) /
                        (float(row['max_score']) - float(row['min_score']))
                    ),
                })

        candidates_df = pd.DataFrame(candidates)
        if not candidates_df.empty:
            candidates_df.sort_values('distance', ascending=False, inplace=True)
            candidates_df.reset_index(drop=True, inplace=True)

        return candidates_df
