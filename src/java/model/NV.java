package model;

public class NV {
    private int id;
    private String hoten, ngaysinh, gioitinh, diachi, sdt, chucvu;
    private int mucluong;

    public NV() {
    }

    public NV(int id, String hoten, String ngaysinh, String gioitinh, String diachi, String sdt, String chucvu, int mucluong) {
        this.id = id;
        this.hoten = hoten;
        this.ngaysinh = ngaysinh;
        this.gioitinh = gioitinh;
        this.diachi = diachi;
        this.sdt = sdt;
        this.chucvu = chucvu;
        this.mucluong = mucluong;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getHoten() {
        return hoten;
    }
    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getNgaysinh() {
        return ngaysinh;
    }
    public void setNgaysinh(String ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getGioitinh() {
        return gioitinh;
    }
    public void setGioitinh(String gioitinh) {
        this.gioitinh = gioitinh;
    }

    public String getDiachi() {
        return diachi;
    }
    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getSdt() {
        return sdt;
    }
    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getChucvu() {
        return chucvu;
    }
    public void setChucvu(String chucvu) {
        this.chucvu = chucvu;
    }

    public int getMucluong() {
        return mucluong;
    }
    public void setMucluong(int mucluong) {
        this.mucluong = mucluong;
    }

    @Override
    public String toString() {
        return "NV{" + "id=" + id + ", hoten=" + hoten + ", ngaysinh=" + ngaysinh + ", gioitinh=" + gioitinh + ", diachi=" + diachi + ", sdt=" + sdt + ", chucvu=" + chucvu + ", mucluong=" + mucluong + '}';
    }
    
    
}
