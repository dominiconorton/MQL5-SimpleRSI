void OnTick()
  {
      // create an Array for several prices
      double myRSIArray[];
      
      // define the properties of the RSI
      int myRSIDefinition = iRSI (_Symbol,_Period,14,PRICE_CLOSE);
      
      // sort the price array from the current candle downwards
      ArraySetAsSeries(myRSIArray,true);
      
      // defined EA, current candle,3 candles, store result
      CopyBuffer(myRSIDefinition,0,0,3,myRSIArray);
      
      // calculate EA for the current candle
      double myRSIValue=NormalizeDouble(myRSIArray[0],2);
      
      // chart output of the current EA
      Comment ("myRSIValue: ",myRSIValue);
   
  }