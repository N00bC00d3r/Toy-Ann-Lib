void setup(){
  Neural_Network brain =new Neural_Network(2,2,2);
  double[][] inputs=new double[4][2];
  inputs[0][0]=0;inputs[0][1]=1;
  inputs[1][0]=1;inputs[1][1]=0;
  inputs[2][0]=0;inputs[2][1]=0;
  inputs[3][0]=1;inputs[3][1]=1;
  
  double[][] target=new double[4][2];
  target[0][0]=1;target[0][1]=0;
  target[1][0]=1;target[1][1]=0;
  target[2][0]=0;target[2][1]=1;
  target[3][0]=0;target[3][1]=1;  
  
  for(int i=0;i<1000000;i++)
  {
      int j=((int)(Math.random()*10))%4;
      double[] myinputs={inputs[j][0],inputs[j][1]};
      double[] mytarget={target[j][0],target[j][1]};
      brain.train(myinputs,mytarget);
    
  }
  double[] input={1,1};
  double[] guess=brain.feedforward(input);
  for(int i=0;i<guess.length;i++){
    println(guess[i]);
  }
  
}
