/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Primitiva.modelo;

/**
 *
 * @author Pineapple
 */
public class Boleto {
    
    private int num;
    private String[] apuestas;
    private int reintegro;
    private int importe;
    
    public Boleto(int numero,int numapuestas)
    {
        this.num=numero;
        this.apuestas=new String[numapuestas];
        this.importe=numapuestas;
        GenerarApuestas();
        GenerarReintegro();
    }
    private void GenerarApuestas()
    {
        boolean[] usados;
        int[] numeros;
        for(int i=0;i<apuestas.length;i++){
             usados=new boolean[50];
             numeros= new int[6];
             for(int j=0;j<6;j++){
                numeros[j]=(int) (Math.random()*49+1);
                while(usados[numeros[j]]==true){
                    numeros[j]=(int) (Math.random()*49+1);
                   }
                usados[numeros[j]]=true;
             }
             apuestas[i]=numeros[0]+","+numeros[1]+","+numeros[2]+","+numeros[3]+","+numeros[4]+","+numeros[5];
        }
    }
    
    private void GenerarReintegro()
    {
        this.reintegro=(int) (Math.random()*9+1);
    }
    public int getNum() {
        return num;
    }

    public String[] getApuestas() {
        return apuestas;
    }

    public int getReintegro() {
        return reintegro;
    }

    public int getImporte() {
        return importe;
    }
    
    public int getNumApuestas(){
        return apuestas.length;
    }
    
    public String toString()
    {
        String texto;
        texto="Boleto nº"+this.num;
        for(int i=0;i<apuestas.length;i++){
            texto+="\n\tApuesta "+(i+1)+": "+apuestas[i];
        }
        texto+="\n\tReintegro: "+this.reintegro;
        texto+="\n\tImporte: "+this.importe+" €";
        return texto;
    }
            
    
}
