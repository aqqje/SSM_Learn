/** * Copyright (c), 2018-2018, XXX有限公司 * FileName: BookStockDao * Author:   Administrator * Date:     2018/5/1022:37 * Description: * History: * <author>    <time>    <version>    <desc> * 作者姓名     修改时间      版本号       描述 */package aqqje.com.jdbc.txxml.beans;public class BookStock {    private Integer isbn;    private Integer stock;    public BookStock() {    }    public BookStock(Integer isbn, Integer stock) {        this.isbn = isbn;        this.stock = stock;    }    public Integer getIsbn() {        return isbn;    }    public void setIsbn(Integer isbn) {        this.isbn = isbn;    }    public Integer getStock() {        return stock;    }    public void setStock(Integer stock) {        this.stock = stock;    }    @Override    public String toString() {        return "BookStock{" +                "isbn=" + isbn +                ", stock=" + stock +                '}';    }}