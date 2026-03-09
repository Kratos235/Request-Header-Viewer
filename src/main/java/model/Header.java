package model;

public class Header {

    private int id;
    private String name;
    private String value;
    private String ip;
    private String note;

    public Header(int id,String name,String value,String ip,String note){

        this.id=id;
        this.name=name;
        this.value=value;
        this.ip=ip;
        this.note=note;
    }

    public int getId(){return id;}
    public String getName(){return name;}
    public String getValue(){return value;}
    public String getIp(){return ip;}
    public String getNote(){return note;}
}