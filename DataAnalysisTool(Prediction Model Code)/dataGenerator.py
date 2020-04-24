from sqlalchemy import create_engine,Table,Column,Integer,String,DATE,FLOAT,MetaData,ForeignKey
from sqlalchemy.orm import sessionmaker,relationship
from sqlalchemy.ext.declarative import declarative_base
from datetime import datetime, timedelta, date
import numpy as np
'''
import itertools
list1 = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t"]
iter = itertools.combinations(list1,3)
nameLib = list(iter)
newName=nameLib[i][0]+nameLib[i][1]+nameLib[i][2]
'''
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

baseDate=date(2018,1,1)
curDate=baseDate
Base.metadata.create_all(engine)

for i in range(-499,500):
    curDate=curDate + timedelta(days=1)
    newDate=curDate.isoformat()
    newProfit=pow(i/1000,2)*1000
    new_record=Record(date=newDate,profit=newProfit)
    session.add(new_record)
session.commit()
