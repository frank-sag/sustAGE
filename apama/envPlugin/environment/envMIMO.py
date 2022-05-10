'''
Created on 22.01.2020

@author: MADI
'''
from apama.eplplugin import EPLPluginBase,EPLAction
import math
class environment(EPLPluginBase):
    '''
    classdocs
    '''


    def __init__(self, params):
        '''
        Constructor
        '''
        super(environment,self).__init__(params)
    @EPLAction("action<float,float> returns float")
    def heat_index(self,temperature, humidity):
        c2f=lambda t: t * 9 / 5. + 32   # Celcius to Fahrenheit
        f2c=lambda t: (t - 32) * 5 / 9. # Fahrenheit to Celcius 

        c1 = -42.379
        c2 = 2.04901523
        c3 = 10.14333127
        c4 = -0.22475541
        c5 = -6.83783e-3
        c6 = -5.481717e-2
        c7 = 1.22874e-3
        c8 = 8.5282e-4
        c9 = -1.99e-6
    
        T = c2f(temperature) # convert temperature to Fahrenheit 
        RH = humidity
    
        # try simplified formula first (used for HI < 80)
        HI = 0.5 * (T + 61. + (T - 68.) * 1.2 + RH * 0.094)
        
        if HI >= 80:
            # use Rothfusz regression
            HI = math.fsum([
                c1,
                c2 * T,
                c3 * RH,
                c4 * T * RH,
                c5 * T**2,
                c6 * RH**2,
                c7 * T**2 * RH,
                c8 * T * RH**2,
                c9 * T**2 * RH**2,
            ])
    
        HI = f2c(HI) # convert back to Celcius
        return round(HI)
class apama_math(EPLPluginBase):
    def __init__(self, params):
        '''
        Constructor
        '''
        super(apama_math,self).__init__(params)
    @EPLAction("action<float> returns float")
    def sin(self,x):
        return math.sin(x);
    @EPLAction("action<float,float> returns float")
    def atan2(self,y,x):
        return math.atan2(y, x)
    @EPLAction("action<float> returns float")
    def sqrt (self,x):
        return math.sqrt(x)#
    @EPLAction("action<float> returns float")
    def cos(self,x):
        return math.cos(x);
    
#class apama_sql(EPLPluginBase):
#    def __init__(self, params):
        '''
        Constructor
        '''
#        super(apama_sql,self).__init__(params)
#    @EPLAction("action<float> returns float")
#    def connect_heartrate(self,x):
#        return math.sin(x);
#    @EPLAction("action<float,float> returns float")
#    def connect_userlocation(self,y,x):
#        return math.atan2(y, x)
   