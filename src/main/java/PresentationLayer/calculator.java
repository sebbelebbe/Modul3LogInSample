package PresentationLayer;


import java.util.ArrayList;

public class calculator {
    public calculator() {

    }

  public ArrayList<Integer> FullHouse(int height, int width, int length) {
        ArrayList<Integer> briks = new ArrayList();
        ArrayList<Integer> types = new ArrayList();
        types.add(4);
        types.add(2);
        types.add(1);
        for (int i = 0; i < types.size(); i++) {
            briks.add(((this.WallX(types, length).get(i) + this.Wally(types, width).get(i)) * 2) * height);
        }

        return briks;
    }

    private ArrayList<Integer> WallX(ArrayList<Integer> types, int length) {
        ArrayList<Integer> briks = new ArrayList();
        for (int i = 0; i < types.size(); i++) {
            if (length / types.get(i) > 0) {
                briks.add(length / types.get(i));
                length -= briks.get(i) * types.get(i);
            } else {
                briks.add(0);
            }
        }

        return briks;
    }

    private ArrayList<Integer> Wally(ArrayList<Integer> types, int width) {
        ArrayList<Integer> briks = new ArrayList();
        width -= 4;
        for (int i = 0; i < types.size(); i++) {
            if (width / types.get(i) > 0) {
                briks.add(width / types.get(i));
                width -= briks.get(i) * types.get(i);
            } else {
                briks.add(0);
            }
        }
        return briks;
    }
}
