from sqlalchemy import create_engine,Table,Column,Integer,String,DATE,FLOAT,MetaData,ForeignKey
from sqlalchemy.orm import sessionmaker,relationship
from sqlalchemy.ext.declarative import declarative_base
import numpy as np
from keras.models import Model, Sequential
from keras.layers import Dense,Dropout,Activation
from tensorflow import keras
from keras.optimizers import SGD
import matplotlib.pyplot as plt
from sklearn.utils import shuffle
from datetime import datetime, timedelta, date
import pymysql
pymysql.converters.encoders[np.float64] = pymysql.converters.escape_float
pymysql.converters.conversions = pymysql.converters.encoders.copy()
pymysql.converters.conversions.update(pymysql.converters.decoders)
engine = create_engine("mysql+pymysql://root:Ww19991017@localhost:3306/salesdataanalysis",echo=True)
conn=engine.connect()
Base = declarative_base()
DBSession = sessionmaker(bind=engine)
session = DBSession()

class Record(Base):
    __tablename__ = "Record"
    id = Column(Integer, autoincrement=True, primary_key=True)
    date = Column(DATE)
    profit = Column(FLOAT(32))
class Estimate(Base):
    __tablename__ = "Estimate"
    id = Column(Integer, autoincrement=True, primary_key=True)
    date = Column(DATE)
    profit = Column(FLOAT(32))
Base.metadata.tables['Estimate'].delete()
Base.metadata.create_all(engine)

rows = session.query(Record).count()
results = session.query(Record).order_by(Record.date.asc()).all()
baseDate=results[0].date
x_data = []
y_data = []
date_data = []
for rec in results:
    date_data.append(rec.date)
    x_data.append(((rec.date-baseDate).days-500+1)/1000)
    y_data.append(rec.profit/500)
x_train=np.array(x_data)
y_train=np.array(y_data)
x_train,y_train=shuffle(x_train,y_train)


model=Sequential()
model.add(Dense(units=10,input_dim=1))
model.add(Activation('tanh'))   
model.add(Dense(units=1))   
model.add(Activation('tanh'))

defsgd=SGD(lr=0.3)

model.compile(optimizer=defsgd,loss='mse')

for step in range(5000):
    cost=model.train_on_batch(x_data,y_data)

y_pred=model.predict(x_data)
plt.scatter(date_data,y_data)
plt.plot(date_data,y_pred,'r-',lw=3)
plt.show()

for j in range(1,8):
    test=[]
    test.append((j+rows-499)/1000)
    prd = model.predict(test)[0][0]
    new_estimate = Estimate(date=results[rows-1].date+timedelta(days=j),profit=prd*500)
    session.add(new_estimate)
session.commit()