package Entity;

import javax.servlet.http.HttpSession;

public class Order {    
public int højde;
public int længde;
public int brede;
public int pris;
public int userID;
public int OrderID;

    public Order(int højde, int længde, int brede, int pris, int userID, int OrderID) {
        this.højde = højde;
        this.længde = længde;
        this.brede = brede;
        this.pris = pris;
        this.userID = userID;
    }





    public int getHøjde() {
        return højde;
    }

    public int getLængde() {
        return længde;
    }

    public int getBrede() {
        return brede;
    }

    public int getPris() {
        return pris;
    }
       public int getorderid() {
        return 1;
    }
    
}
