package com.campus.entity;

import java.util.Date;

public class Comment {
    private Integer id;
    
    private Date publishDatetime;
    
    private Integer comRepFlag;
    
    private Integer userId;
    
    private Integer quoteId;

    private String contents;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getPublishDatetime() {
        return publishDatetime;
    }

    public void setPublishDatetime(Date publishDatetime) {
        this.publishDatetime = publishDatetime;
    }

    public Integer getComRepFlag() {
        return comRepFlag;
    }

    public void setComRepFlag(Integer comRepFlag) {
        this.comRepFlag = comRepFlag;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getQuoteId() {
        return quoteId;
    }

    public void setQuoteId(Integer quoteId) {
        this.quoteId = quoteId;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }
}