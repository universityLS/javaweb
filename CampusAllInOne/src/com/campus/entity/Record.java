package com.campus.entity;

import java.util.Date;

public class Record {
    private Integer id;

    private Integer lostFoundFlag;

    private String titile;

    private String goodsName;

    private String imgPath;

    private Date publishDatetime;

    private Integer catetoryId;

    private Integer userId;

    private Integer finishFlag;

    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getLostFoundFlag() {
        return lostFoundFlag;
    }

    public void setLostFoundFlag(Integer lostFoundFlag) {
        this.lostFoundFlag = lostFoundFlag;
    }

    public String getTitile() {
        return titile;
    }

    public void setTitile(String titile) {
        this.titile = titile;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public Date getPublishDatetime() {
        return publishDatetime;
    }

    public void setPublishDatetime(Date publishDatetime) {
        this.publishDatetime = publishDatetime;
    }

    public Integer getCatetoryId() {
        return catetoryId;
    }

    public void setCatetoryId(Integer catetoryId) {
        this.catetoryId = catetoryId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getFinishFlag() {
        return finishFlag;
    }

    public void setFinishFlag(Integer finishFlag) {
        this.finishFlag = finishFlag;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}