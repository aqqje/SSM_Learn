package aqqje.com.beans.contollers;import aqqje.com.beans.Persion;import java.util.Map;public class NewGod {    private String name;    private int leg;    private Map<String, Object> persion;    public NewGod() {    }    public NewGod(String name, int leg, Map<String, Object> persion) {        this.name = name;        this.leg = leg;        this.persion = persion;    }    public String getName() {        return name;    }    public void setName(String name) {        this.name = name;    }    public int getLeg() {        return leg;    }    public void setLeg(int leg) {        this.leg = leg;    }    public Map<String, Object> getPersion() {        return persion;    }    public void setPersion(Map<String, Object> persion) {        this.persion = persion;    }    @Override    public String toString() {        return "NewGod{" +                "name='" + name + '\'' +                ", leg=" + leg +                ", persion=" + persion +                '}';    }}