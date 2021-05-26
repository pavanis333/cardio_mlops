from keras.models  import load_model
from flask import Flask, render_template, request

app = Flask("cardio_app")
model  =  load_model("cardio.h5")

@app.route("/home")
def home():
    return render_template("form.html")

@app.route("/output" , methods=[ "GET" ] )
def dia():
        x1 = request.args.get("age")
        x2 = request.args.get("gender")
        x3 = request.args.get("height")
        x4 = request.args.get("weight")
        x5 = request.args.get("systolic")
        x6 = request.args.get("diastolic")
        x7 = request.args.get("cholesterol")
        x8 = request.args.get("glucose")
        x9 = request.args.get("smoke")
        x10 = request.args.get("alcohol")
        x11 = request.args.get("activity")
        
        output = model.predict([[ int(x1) , int(x2) , int(x3),  int(x4), int(x5), int(x6), int(x7), int(x8), int(x9), int(x10), int(x11) ]])
        
        if (round(output[0][0])) == 1:
            return render_template("positive.html")

        else:
            return render_template("negative.html")
        
app.run(host="0.0.0.0" ,  port=80)
