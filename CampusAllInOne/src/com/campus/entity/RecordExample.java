package com.campus.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class RecordExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public RecordExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andLostFoundFlagIsNull() {
            addCriterion("lost_found_flag is null");
            return (Criteria) this;
        }

        public Criteria andLostFoundFlagIsNotNull() {
            addCriterion("lost_found_flag is not null");
            return (Criteria) this;
        }

        public Criteria andLostFoundFlagEqualTo(Integer value) {
            addCriterion("lost_found_flag =", value, "lostFoundFlag");
            return (Criteria) this;
        }

        public Criteria andLostFoundFlagNotEqualTo(Integer value) {
            addCriterion("lost_found_flag <>", value, "lostFoundFlag");
            return (Criteria) this;
        }

        public Criteria andLostFoundFlagGreaterThan(Integer value) {
            addCriterion("lost_found_flag >", value, "lostFoundFlag");
            return (Criteria) this;
        }

        public Criteria andLostFoundFlagGreaterThanOrEqualTo(Integer value) {
            addCriterion("lost_found_flag >=", value, "lostFoundFlag");
            return (Criteria) this;
        }

        public Criteria andLostFoundFlagLessThan(Integer value) {
            addCriterion("lost_found_flag <", value, "lostFoundFlag");
            return (Criteria) this;
        }

        public Criteria andLostFoundFlagLessThanOrEqualTo(Integer value) {
            addCriterion("lost_found_flag <=", value, "lostFoundFlag");
            return (Criteria) this;
        }

        public Criteria andLostFoundFlagIn(List<Integer> values) {
            addCriterion("lost_found_flag in", values, "lostFoundFlag");
            return (Criteria) this;
        }

        public Criteria andLostFoundFlagNotIn(List<Integer> values) {
            addCriterion("lost_found_flag not in", values, "lostFoundFlag");
            return (Criteria) this;
        }

        public Criteria andLostFoundFlagBetween(Integer value1, Integer value2) {
            addCriterion("lost_found_flag between", value1, value2, "lostFoundFlag");
            return (Criteria) this;
        }

        public Criteria andLostFoundFlagNotBetween(Integer value1, Integer value2) {
            addCriterion("lost_found_flag not between", value1, value2, "lostFoundFlag");
            return (Criteria) this;
        }

        public Criteria andTitileIsNull() {
            addCriterion("titile is null");
            return (Criteria) this;
        }

        public Criteria andTitileIsNotNull() {
            addCriterion("titile is not null");
            return (Criteria) this;
        }

        public Criteria andTitileEqualTo(String value) {
            addCriterion("titile =", value, "titile");
            return (Criteria) this;
        }

        public Criteria andTitileNotEqualTo(String value) {
            addCriterion("titile <>", value, "titile");
            return (Criteria) this;
        }

        public Criteria andTitileGreaterThan(String value) {
            addCriterion("titile >", value, "titile");
            return (Criteria) this;
        }

        public Criteria andTitileGreaterThanOrEqualTo(String value) {
            addCriterion("titile >=", value, "titile");
            return (Criteria) this;
        }

        public Criteria andTitileLessThan(String value) {
            addCriterion("titile <", value, "titile");
            return (Criteria) this;
        }

        public Criteria andTitileLessThanOrEqualTo(String value) {
            addCriterion("titile <=", value, "titile");
            return (Criteria) this;
        }

        public Criteria andTitileLike(String value) {
            addCriterion("titile like", value, "titile");
            return (Criteria) this;
        }

        public Criteria andTitileNotLike(String value) {
            addCriterion("titile not like", value, "titile");
            return (Criteria) this;
        }

        public Criteria andTitileIn(List<String> values) {
            addCriterion("titile in", values, "titile");
            return (Criteria) this;
        }

        public Criteria andTitileNotIn(List<String> values) {
            addCriterion("titile not in", values, "titile");
            return (Criteria) this;
        }

        public Criteria andTitileBetween(String value1, String value2) {
            addCriterion("titile between", value1, value2, "titile");
            return (Criteria) this;
        }

        public Criteria andTitileNotBetween(String value1, String value2) {
            addCriterion("titile not between", value1, value2, "titile");
            return (Criteria) this;
        }

        public Criteria andGoodsNameIsNull() {
            addCriterion("goods_name is null");
            return (Criteria) this;
        }

        public Criteria andGoodsNameIsNotNull() {
            addCriterion("goods_name is not null");
            return (Criteria) this;
        }

        public Criteria andGoodsNameEqualTo(String value) {
            addCriterion("goods_name =", value, "goodsName");
            return (Criteria) this;
        }

        public Criteria andGoodsNameNotEqualTo(String value) {
            addCriterion("goods_name <>", value, "goodsName");
            return (Criteria) this;
        }

        public Criteria andGoodsNameGreaterThan(String value) {
            addCriterion("goods_name >", value, "goodsName");
            return (Criteria) this;
        }

        public Criteria andGoodsNameGreaterThanOrEqualTo(String value) {
            addCriterion("goods_name >=", value, "goodsName");
            return (Criteria) this;
        }

        public Criteria andGoodsNameLessThan(String value) {
            addCriterion("goods_name <", value, "goodsName");
            return (Criteria) this;
        }

        public Criteria andGoodsNameLessThanOrEqualTo(String value) {
            addCriterion("goods_name <=", value, "goodsName");
            return (Criteria) this;
        }

        public Criteria andGoodsNameLike(String value) {
            addCriterion("goods_name like", value, "goodsName");
            return (Criteria) this;
        }

        public Criteria andGoodsNameNotLike(String value) {
            addCriterion("goods_name not like", value, "goodsName");
            return (Criteria) this;
        }

        public Criteria andGoodsNameIn(List<String> values) {
            addCriterion("goods_name in", values, "goodsName");
            return (Criteria) this;
        }

        public Criteria andGoodsNameNotIn(List<String> values) {
            addCriterion("goods_name not in", values, "goodsName");
            return (Criteria) this;
        }

        public Criteria andGoodsNameBetween(String value1, String value2) {
            addCriterion("goods_name between", value1, value2, "goodsName");
            return (Criteria) this;
        }

        public Criteria andGoodsNameNotBetween(String value1, String value2) {
            addCriterion("goods_name not between", value1, value2, "goodsName");
            return (Criteria) this;
        }

        public Criteria andImgPathIsNull() {
            addCriterion("img_path is null");
            return (Criteria) this;
        }

        public Criteria andImgPathIsNotNull() {
            addCriterion("img_path is not null");
            return (Criteria) this;
        }

        public Criteria andImgPathEqualTo(String value) {
            addCriterion("img_path =", value, "imgPath");
            return (Criteria) this;
        }

        public Criteria andImgPathNotEqualTo(String value) {
            addCriterion("img_path <>", value, "imgPath");
            return (Criteria) this;
        }

        public Criteria andImgPathGreaterThan(String value) {
            addCriterion("img_path >", value, "imgPath");
            return (Criteria) this;
        }

        public Criteria andImgPathGreaterThanOrEqualTo(String value) {
            addCriterion("img_path >=", value, "imgPath");
            return (Criteria) this;
        }

        public Criteria andImgPathLessThan(String value) {
            addCriterion("img_path <", value, "imgPath");
            return (Criteria) this;
        }

        public Criteria andImgPathLessThanOrEqualTo(String value) {
            addCriterion("img_path <=", value, "imgPath");
            return (Criteria) this;
        }

        public Criteria andImgPathLike(String value) {
            addCriterion("img_path like", value, "imgPath");
            return (Criteria) this;
        }

        public Criteria andImgPathNotLike(String value) {
            addCriterion("img_path not like", value, "imgPath");
            return (Criteria) this;
        }

        public Criteria andImgPathIn(List<String> values) {
            addCriterion("img_path in", values, "imgPath");
            return (Criteria) this;
        }

        public Criteria andImgPathNotIn(List<String> values) {
            addCriterion("img_path not in", values, "imgPath");
            return (Criteria) this;
        }

        public Criteria andImgPathBetween(String value1, String value2) {
            addCriterion("img_path between", value1, value2, "imgPath");
            return (Criteria) this;
        }

        public Criteria andImgPathNotBetween(String value1, String value2) {
            addCriterion("img_path not between", value1, value2, "imgPath");
            return (Criteria) this;
        }

        public Criteria andPublishDatetimeIsNull() {
            addCriterion("publish_datetime is null");
            return (Criteria) this;
        }

        public Criteria andPublishDatetimeIsNotNull() {
            addCriterion("publish_datetime is not null");
            return (Criteria) this;
        }

        public Criteria andPublishDatetimeEqualTo(Date value) {
            addCriterion("publish_datetime =", value, "publishDatetime");
            return (Criteria) this;
        }

        public Criteria andPublishDatetimeNotEqualTo(Date value) {
            addCriterion("publish_datetime <>", value, "publishDatetime");
            return (Criteria) this;
        }

        public Criteria andPublishDatetimeGreaterThan(Date value) {
            addCriterion("publish_datetime >", value, "publishDatetime");
            return (Criteria) this;
        }

        public Criteria andPublishDatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("publish_datetime >=", value, "publishDatetime");
            return (Criteria) this;
        }

        public Criteria andPublishDatetimeLessThan(Date value) {
            addCriterion("publish_datetime <", value, "publishDatetime");
            return (Criteria) this;
        }

        public Criteria andPublishDatetimeLessThanOrEqualTo(Date value) {
            addCriterion("publish_datetime <=", value, "publishDatetime");
            return (Criteria) this;
        }

        public Criteria andPublishDatetimeIn(List<Date> values) {
            addCriterion("publish_datetime in", values, "publishDatetime");
            return (Criteria) this;
        }

        public Criteria andPublishDatetimeNotIn(List<Date> values) {
            addCriterion("publish_datetime not in", values, "publishDatetime");
            return (Criteria) this;
        }

        public Criteria andPublishDatetimeBetween(Date value1, Date value2) {
            addCriterion("publish_datetime between", value1, value2, "publishDatetime");
            return (Criteria) this;
        }

        public Criteria andPublishDatetimeNotBetween(Date value1, Date value2) {
            addCriterion("publish_datetime not between", value1, value2, "publishDatetime");
            return (Criteria) this;
        }

        public Criteria andCatetoryIdIsNull() {
            addCriterion("catetory_id is null");
            return (Criteria) this;
        }

        public Criteria andCatetoryIdIsNotNull() {
            addCriterion("catetory_id is not null");
            return (Criteria) this;
        }

        public Criteria andCatetoryIdEqualTo(Integer value) {
            addCriterion("catetory_id =", value, "catetoryId");
            return (Criteria) this;
        }

        public Criteria andCatetoryIdNotEqualTo(Integer value) {
            addCriterion("catetory_id <>", value, "catetoryId");
            return (Criteria) this;
        }

        public Criteria andCatetoryIdGreaterThan(Integer value) {
            addCriterion("catetory_id >", value, "catetoryId");
            return (Criteria) this;
        }

        public Criteria andCatetoryIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("catetory_id >=", value, "catetoryId");
            return (Criteria) this;
        }

        public Criteria andCatetoryIdLessThan(Integer value) {
            addCriterion("catetory_id <", value, "catetoryId");
            return (Criteria) this;
        }

        public Criteria andCatetoryIdLessThanOrEqualTo(Integer value) {
            addCriterion("catetory_id <=", value, "catetoryId");
            return (Criteria) this;
        }

        public Criteria andCatetoryIdIn(List<Integer> values) {
            addCriterion("catetory_id in", values, "catetoryId");
            return (Criteria) this;
        }

        public Criteria andCatetoryIdNotIn(List<Integer> values) {
            addCriterion("catetory_id not in", values, "catetoryId");
            return (Criteria) this;
        }

        public Criteria andCatetoryIdBetween(Integer value1, Integer value2) {
            addCriterion("catetory_id between", value1, value2, "catetoryId");
            return (Criteria) this;
        }

        public Criteria andCatetoryIdNotBetween(Integer value1, Integer value2) {
            addCriterion("catetory_id not between", value1, value2, "catetoryId");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andFinishFlagIsNull() {
            addCriterion("finish_flag is null");
            return (Criteria) this;
        }

        public Criteria andFinishFlagIsNotNull() {
            addCriterion("finish_flag is not null");
            return (Criteria) this;
        }

        public Criteria andFinishFlagEqualTo(Integer value) {
            addCriterion("finish_flag =", value, "finishFlag");
            return (Criteria) this;
        }

        public Criteria andFinishFlagNotEqualTo(Integer value) {
            addCriterion("finish_flag <>", value, "finishFlag");
            return (Criteria) this;
        }

        public Criteria andFinishFlagGreaterThan(Integer value) {
            addCriterion("finish_flag >", value, "finishFlag");
            return (Criteria) this;
        }

        public Criteria andFinishFlagGreaterThanOrEqualTo(Integer value) {
            addCriterion("finish_flag >=", value, "finishFlag");
            return (Criteria) this;
        }

        public Criteria andFinishFlagLessThan(Integer value) {
            addCriterion("finish_flag <", value, "finishFlag");
            return (Criteria) this;
        }

        public Criteria andFinishFlagLessThanOrEqualTo(Integer value) {
            addCriterion("finish_flag <=", value, "finishFlag");
            return (Criteria) this;
        }

        public Criteria andFinishFlagIn(List<Integer> values) {
            addCriterion("finish_flag in", values, "finishFlag");
            return (Criteria) this;
        }

        public Criteria andFinishFlagNotIn(List<Integer> values) {
            addCriterion("finish_flag not in", values, "finishFlag");
            return (Criteria) this;
        }

        public Criteria andFinishFlagBetween(Integer value1, Integer value2) {
            addCriterion("finish_flag between", value1, value2, "finishFlag");
            return (Criteria) this;
        }

        public Criteria andFinishFlagNotBetween(Integer value1, Integer value2) {
            addCriterion("finish_flag not between", value1, value2, "finishFlag");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}