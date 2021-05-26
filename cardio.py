#!/usr/bin/env python

import pandas as pd
data = pd.read_csv("cardio.csv", sep=";")
age = (data["age"]/365).astype("int").to_frame()
data = data.drop(["age", "id"], axis=1)
data = pd.concat([age ,data], axis=1)
y = data["cardio"]
X = data[["age","gender","height", "weight", "ap_hi","ap_lo","cholesterol","gluc","smoke","alco","active"]]

from keras.models import Sequential
from keras.layers import Dense
from keras.optimizers import  Adam

model = Sequential()
model.add(Dense(input_dim=11, units=11, activation = 'relu'))
model.add(Dense(units=8, activation = 'relu'))
model.add(Dense(units=6, activation = 'relu'))
model.add(Dense(units=4, activation = 'relu'))
model.add(Dense(units=1, activation ='sigmoid'))
model.compile(loss='binary_crossentropy', optimizer='adam', metrics=['accuracy'])
model.fit(X,y, epochs=100) 
model.save("cardio.h5")
