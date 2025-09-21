"""
SkillMap.ai Backend API (Prototype)
This file simulates how we would integrate Google Cloud Vertex AI & Gemini API
to analyze student skills and provide career recommendations.
"""

from flask import Flask, jsonify, request

app = Flask(__name__)

# Dummy endpoint for skill test
@app.route('/api/skill-test', methods=['POST'])
def skill_test():
    data = request.json
    student_name = data.get("name", "Student")
    # Placeholder logic (real logic would use Vertex AI / Gemini)
    return jsonify({
        "student": student_name,
        "skills_detected": ["Problem Solving", "Logical Thinking", "Basic Coding"],
        "career_recommendations": [
            {"career": "Data Scientist", "match": "92%"},
            {"career": "Cybersecurity Analyst", "match": "88%"},
            {"career": "AI Researcher", "match": "84%"}
        ]
    })

# Dummy endpoint for roadmap
@app.route('/api/roadmap', methods=['GET'])
def roadmap():
    return jsonify({
        "career": "Data Scientist",
        "roadmap": [
            "Learn Python & Statistics",
            "Complete 2 ML projects",
            "Take an internship",
            "Build advanced portfolio",
            "Apply for Data Science jobs"
        ]
    })

if __name__ == '__main__':
    app.run(debug=True)
