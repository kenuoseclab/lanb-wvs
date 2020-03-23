package com.colodoo.manager.scan.scanResult.model;

import java.io.Serializable;

public class PieChartVO implements Serializable {

    private int count;
    private String item;
    private Double percent;

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public Double getPercent() {
        return percent;
    }

    public void setPercent(Double percent) {
        this.percent = percent;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

}
