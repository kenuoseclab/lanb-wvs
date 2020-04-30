package com.colodoo.manager.needs.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class NeedsExample {
    /**
     * needs
     */
    protected String orderByClause;

    /**
     * needs
     */
    protected boolean distinct;

    /**
     * needs
     */
    protected List<Criteria> oredCriteria;

    /**
     *
     * @mbg.generated 2020-03-15
     */
    public NeedsExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     *
     * @mbg.generated 2020-03-15
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     *
     * @mbg.generated 2020-03-15
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     *
     * @mbg.generated 2020-03-15
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     *
     * @mbg.generated 2020-03-15
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     *
     * @mbg.generated 2020-03-15
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     *
     * @mbg.generated 2020-03-15
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     *
     * @mbg.generated 2020-03-15
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     *
     * @mbg.generated 2020-03-15
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     *
     * @mbg.generated 2020-03-15
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     *
     * @mbg.generated 2020-03-15
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * needs 2020-03-15
     */
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

        public Criteria andNeedsIdIsNull() {
            addCriterion("needs_id is null");
            return (Criteria) this;
        }

        public Criteria andNeedsIdIsNotNull() {
            addCriterion("needs_id is not null");
            return (Criteria) this;
        }

        public Criteria andNeedsIdEqualTo(String value) {
            addCriterion("needs_id =", value, "needsId");
            return (Criteria) this;
        }

        public Criteria andNeedsIdNotEqualTo(String value) {
            addCriterion("needs_id <>", value, "needsId");
            return (Criteria) this;
        }

        public Criteria andNeedsIdGreaterThan(String value) {
            addCriterion("needs_id >", value, "needsId");
            return (Criteria) this;
        }

        public Criteria andNeedsIdGreaterThanOrEqualTo(String value) {
            addCriterion("needs_id >=", value, "needsId");
            return (Criteria) this;
        }

        public Criteria andNeedsIdLessThan(String value) {
            addCriterion("needs_id <", value, "needsId");
            return (Criteria) this;
        }

        public Criteria andNeedsIdLessThanOrEqualTo(String value) {
            addCriterion("needs_id <=", value, "needsId");
            return (Criteria) this;
        }

        public Criteria andNeedsIdLike(String value) {
            addCriterion("needs_id like", value, "needsId");
            return (Criteria) this;
        }

        public Criteria andNeedsIdNotLike(String value) {
            addCriterion("needs_id not like", value, "needsId");
            return (Criteria) this;
        }

        public Criteria andNeedsIdIn(List<String> values) {
            addCriterion("needs_id in", values, "needsId");
            return (Criteria) this;
        }

        public Criteria andNeedsIdNotIn(List<String> values) {
            addCriterion("needs_id not in", values, "needsId");
            return (Criteria) this;
        }

        public Criteria andNeedsIdBetween(String value1, String value2) {
            addCriterion("needs_id between", value1, value2, "needsId");
            return (Criteria) this;
        }

        public Criteria andNeedsIdNotBetween(String value1, String value2) {
            addCriterion("needs_id not between", value1, value2, "needsId");
            return (Criteria) this;
        }

        public Criteria andNeedsNameIsNull() {
            addCriterion("needs_name is null");
            return (Criteria) this;
        }

        public Criteria andNeedsNameIsNotNull() {
            addCriterion("needs_name is not null");
            return (Criteria) this;
        }

        public Criteria andNeedsNameEqualTo(String value) {
            addCriterion("needs_name =", value, "needsName");
            return (Criteria) this;
        }

        public Criteria andNeedsNameNotEqualTo(String value) {
            addCriterion("needs_name <>", value, "needsName");
            return (Criteria) this;
        }

        public Criteria andNeedsNameGreaterThan(String value) {
            addCriterion("needs_name >", value, "needsName");
            return (Criteria) this;
        }

        public Criteria andNeedsNameGreaterThanOrEqualTo(String value) {
            addCriterion("needs_name >=", value, "needsName");
            return (Criteria) this;
        }

        public Criteria andNeedsNameLessThan(String value) {
            addCriterion("needs_name <", value, "needsName");
            return (Criteria) this;
        }

        public Criteria andNeedsNameLessThanOrEqualTo(String value) {
            addCriterion("needs_name <=", value, "needsName");
            return (Criteria) this;
        }

        public Criteria andNeedsNameLike(String value) {
            addCriterion("needs_name like", value, "needsName");
            return (Criteria) this;
        }

        public Criteria andNeedsNameNotLike(String value) {
            addCriterion("needs_name not like", value, "needsName");
            return (Criteria) this;
        }

        public Criteria andNeedsNameIn(List<String> values) {
            addCriterion("needs_name in", values, "needsName");
            return (Criteria) this;
        }

        public Criteria andNeedsNameNotIn(List<String> values) {
            addCriterion("needs_name not in", values, "needsName");
            return (Criteria) this;
        }

        public Criteria andNeedsNameBetween(String value1, String value2) {
            addCriterion("needs_name between", value1, value2, "needsName");
            return (Criteria) this;
        }

        public Criteria andNeedsNameNotBetween(String value1, String value2) {
            addCriterion("needs_name not between", value1, value2, "needsName");
            return (Criteria) this;
        }

        public Criteria andNeedsStatusIsNull() {
            addCriterion("needs_status is null");
            return (Criteria) this;
        }

        public Criteria andNeedsStatusIsNotNull() {
            addCriterion("needs_status is not null");
            return (Criteria) this;
        }

        public Criteria andNeedsStatusEqualTo(String value) {
            addCriterion("needs_status =", value, "needsStatus");
            return (Criteria) this;
        }

        public Criteria andNeedsStatusNotEqualTo(String value) {
            addCriterion("needs_status <>", value, "needsStatus");
            return (Criteria) this;
        }

        public Criteria andNeedsStatusGreaterThan(String value) {
            addCriterion("needs_status >", value, "needsStatus");
            return (Criteria) this;
        }

        public Criteria andNeedsStatusGreaterThanOrEqualTo(String value) {
            addCriterion("needs_status >=", value, "needsStatus");
            return (Criteria) this;
        }

        public Criteria andNeedsStatusLessThan(String value) {
            addCriterion("needs_status <", value, "needsStatus");
            return (Criteria) this;
        }

        public Criteria andNeedsStatusLessThanOrEqualTo(String value) {
            addCriterion("needs_status <=", value, "needsStatus");
            return (Criteria) this;
        }

        public Criteria andNeedsStatusLike(String value) {
            addCriterion("needs_status like", value, "needsStatus");
            return (Criteria) this;
        }

        public Criteria andNeedsStatusNotLike(String value) {
            addCriterion("needs_status not like", value, "needsStatus");
            return (Criteria) this;
        }

        public Criteria andNeedsStatusIn(List<String> values) {
            addCriterion("needs_status in", values, "needsStatus");
            return (Criteria) this;
        }

        public Criteria andNeedsStatusNotIn(List<String> values) {
            addCriterion("needs_status not in", values, "needsStatus");
            return (Criteria) this;
        }

        public Criteria andNeedsStatusBetween(String value1, String value2) {
            addCriterion("needs_status between", value1, value2, "needsStatus");
            return (Criteria) this;
        }

        public Criteria andNeedsStatusNotBetween(String value1, String value2) {
            addCriterion("needs_status not between", value1, value2, "needsStatus");
            return (Criteria) this;
        }

        public Criteria andNeedsStepIsNull() {
            addCriterion("needs_step is null");
            return (Criteria) this;
        }

        public Criteria andNeedsStepIsNotNull() {
            addCriterion("needs_step is not null");
            return (Criteria) this;
        }

        public Criteria andNeedsStepEqualTo(String value) {
            addCriterion("needs_step =", value, "needsStep");
            return (Criteria) this;
        }

        public Criteria andNeedsStepNotEqualTo(String value) {
            addCriterion("needs_step <>", value, "needsStep");
            return (Criteria) this;
        }

        public Criteria andNeedsStepGreaterThan(String value) {
            addCriterion("needs_step >", value, "needsStep");
            return (Criteria) this;
        }

        public Criteria andNeedsStepGreaterThanOrEqualTo(String value) {
            addCriterion("needs_step >=", value, "needsStep");
            return (Criteria) this;
        }

        public Criteria andNeedsStepLessThan(String value) {
            addCriterion("needs_step <", value, "needsStep");
            return (Criteria) this;
        }

        public Criteria andNeedsStepLessThanOrEqualTo(String value) {
            addCriterion("needs_step <=", value, "needsStep");
            return (Criteria) this;
        }

        public Criteria andNeedsStepLike(String value) {
            addCriterion("needs_step like", value, "needsStep");
            return (Criteria) this;
        }

        public Criteria andNeedsStepNotLike(String value) {
            addCriterion("needs_step not like", value, "needsStep");
            return (Criteria) this;
        }

        public Criteria andNeedsStepIn(List<String> values) {
            addCriterion("needs_step in", values, "needsStep");
            return (Criteria) this;
        }

        public Criteria andNeedsStepNotIn(List<String> values) {
            addCriterion("needs_step not in", values, "needsStep");
            return (Criteria) this;
        }

        public Criteria andNeedsStepBetween(String value1, String value2) {
            addCriterion("needs_step between", value1, value2, "needsStep");
            return (Criteria) this;
        }

        public Criteria andNeedsStepNotBetween(String value1, String value2) {
            addCriterion("needs_step not between", value1, value2, "needsStep");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdIsNull() {
            addCriterion("create_user_id is null");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdIsNotNull() {
            addCriterion("create_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdEqualTo(String value) {
            addCriterion("create_user_id =", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotEqualTo(String value) {
            addCriterion("create_user_id <>", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdGreaterThan(String value) {
            addCriterion("create_user_id >", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("create_user_id >=", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdLessThan(String value) {
            addCriterion("create_user_id <", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdLessThanOrEqualTo(String value) {
            addCriterion("create_user_id <=", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdLike(String value) {
            addCriterion("create_user_id like", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotLike(String value) {
            addCriterion("create_user_id not like", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdIn(List<String> values) {
            addCriterion("create_user_id in", values, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotIn(List<String> values) {
            addCriterion("create_user_id not in", values, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdBetween(String value1, String value2) {
            addCriterion("create_user_id between", value1, value2, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotBetween(String value1, String value2) {
            addCriterion("create_user_id not between", value1, value2, "createUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNull() {
            addCriterion("update_time is null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNotNull() {
            addCriterion("update_time is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeEqualTo(Date value) {
            addCriterion("update_time =", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotEqualTo(Date value) {
            addCriterion("update_time <>", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThan(Date value) {
            addCriterion("update_time >", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("update_time >=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThan(Date value) {
            addCriterion("update_time <", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThanOrEqualTo(Date value) {
            addCriterion("update_time <=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIn(List<Date> values) {
            addCriterion("update_time in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotIn(List<Date> values) {
            addCriterion("update_time not in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeBetween(Date value1, Date value2) {
            addCriterion("update_time between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotBetween(Date value1, Date value2) {
            addCriterion("update_time not between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdIsNull() {
            addCriterion("update_user_id is null");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdIsNotNull() {
            addCriterion("update_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdEqualTo(String value) {
            addCriterion("update_user_id =", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdNotEqualTo(String value) {
            addCriterion("update_user_id <>", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdGreaterThan(String value) {
            addCriterion("update_user_id >", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("update_user_id >=", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdLessThan(String value) {
            addCriterion("update_user_id <", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdLessThanOrEqualTo(String value) {
            addCriterion("update_user_id <=", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdLike(String value) {
            addCriterion("update_user_id like", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdNotLike(String value) {
            addCriterion("update_user_id not like", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdIn(List<String> values) {
            addCriterion("update_user_id in", values, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdNotIn(List<String> values) {
            addCriterion("update_user_id not in", values, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdBetween(String value1, String value2) {
            addCriterion("update_user_id between", value1, value2, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdNotBetween(String value1, String value2) {
            addCriterion("update_user_id not between", value1, value2, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNull() {
            addCriterion("remark is null");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNotNull() {
            addCriterion("remark is not null");
            return (Criteria) this;
        }

        public Criteria andRemarkEqualTo(String value) {
            addCriterion("remark =", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotEqualTo(String value) {
            addCriterion("remark <>", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThan(String value) {
            addCriterion("remark >", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("remark >=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThan(String value) {
            addCriterion("remark <", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThanOrEqualTo(String value) {
            addCriterion("remark <=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLike(String value) {
            addCriterion("remark like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotLike(String value) {
            addCriterion("remark not like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkIn(List<String> values) {
            addCriterion("remark in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotIn(List<String> values) {
            addCriterion("remark not in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkBetween(String value1, String value2) {
            addCriterion("remark between", value1, value2, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotBetween(String value1, String value2) {
            addCriterion("remark not between", value1, value2, "remark");
            return (Criteria) this;
        }
    }

    /**
     *  * needs
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * needs 2020-03-15
     */
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