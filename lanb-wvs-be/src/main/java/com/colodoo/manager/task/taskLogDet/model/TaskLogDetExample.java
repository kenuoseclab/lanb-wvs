package com.colodoo.manager.task.taskLogDet.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TaskLogDetExample {
    /**
     * task_log_det
     */
    protected String orderByClause;

    /**
     * task_log_det
     */
    protected boolean distinct;

    /**
     * task_log_det
     */
    protected List<Criteria> oredCriteria;

    /**
     *
     * @mbg.generated 2020-03-15
     */
    public TaskLogDetExample() {
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
     * task_log_det 2020-03-15
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

        public Criteria andTaskLogDetIdIsNull() {
            addCriterion("task_log_det_id is null");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetIdIsNotNull() {
            addCriterion("task_log_det_id is not null");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetIdEqualTo(String value) {
            addCriterion("task_log_det_id =", value, "taskLogDetId");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetIdNotEqualTo(String value) {
            addCriterion("task_log_det_id <>", value, "taskLogDetId");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetIdGreaterThan(String value) {
            addCriterion("task_log_det_id >", value, "taskLogDetId");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetIdGreaterThanOrEqualTo(String value) {
            addCriterion("task_log_det_id >=", value, "taskLogDetId");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetIdLessThan(String value) {
            addCriterion("task_log_det_id <", value, "taskLogDetId");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetIdLessThanOrEqualTo(String value) {
            addCriterion("task_log_det_id <=", value, "taskLogDetId");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetIdLike(String value) {
            addCriterion("task_log_det_id like", value, "taskLogDetId");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetIdNotLike(String value) {
            addCriterion("task_log_det_id not like", value, "taskLogDetId");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetIdIn(List<String> values) {
            addCriterion("task_log_det_id in", values, "taskLogDetId");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetIdNotIn(List<String> values) {
            addCriterion("task_log_det_id not in", values, "taskLogDetId");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetIdBetween(String value1, String value2) {
            addCriterion("task_log_det_id between", value1, value2, "taskLogDetId");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetIdNotBetween(String value1, String value2) {
            addCriterion("task_log_det_id not between", value1, value2, "taskLogDetId");
            return (Criteria) this;
        }

        public Criteria andTaskLogIdIsNull() {
            addCriterion("task_log_id is null");
            return (Criteria) this;
        }

        public Criteria andTaskLogIdIsNotNull() {
            addCriterion("task_log_id is not null");
            return (Criteria) this;
        }

        public Criteria andTaskLogIdEqualTo(String value) {
            addCriterion("task_log_id =", value, "taskLogId");
            return (Criteria) this;
        }

        public Criteria andTaskLogIdNotEqualTo(String value) {
            addCriterion("task_log_id <>", value, "taskLogId");
            return (Criteria) this;
        }

        public Criteria andTaskLogIdGreaterThan(String value) {
            addCriterion("task_log_id >", value, "taskLogId");
            return (Criteria) this;
        }

        public Criteria andTaskLogIdGreaterThanOrEqualTo(String value) {
            addCriterion("task_log_id >=", value, "taskLogId");
            return (Criteria) this;
        }

        public Criteria andTaskLogIdLessThan(String value) {
            addCriterion("task_log_id <", value, "taskLogId");
            return (Criteria) this;
        }

        public Criteria andTaskLogIdLessThanOrEqualTo(String value) {
            addCriterion("task_log_id <=", value, "taskLogId");
            return (Criteria) this;
        }

        public Criteria andTaskLogIdLike(String value) {
            addCriterion("task_log_id like", value, "taskLogId");
            return (Criteria) this;
        }

        public Criteria andTaskLogIdNotLike(String value) {
            addCriterion("task_log_id not like", value, "taskLogId");
            return (Criteria) this;
        }

        public Criteria andTaskLogIdIn(List<String> values) {
            addCriterion("task_log_id in", values, "taskLogId");
            return (Criteria) this;
        }

        public Criteria andTaskLogIdNotIn(List<String> values) {
            addCriterion("task_log_id not in", values, "taskLogId");
            return (Criteria) this;
        }

        public Criteria andTaskLogIdBetween(String value1, String value2) {
            addCriterion("task_log_id between", value1, value2, "taskLogId");
            return (Criteria) this;
        }

        public Criteria andTaskLogIdNotBetween(String value1, String value2) {
            addCriterion("task_log_id not between", value1, value2, "taskLogId");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetKeyIsNull() {
            addCriterion("task_log_det_key is null");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetKeyIsNotNull() {
            addCriterion("task_log_det_key is not null");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetKeyEqualTo(String value) {
            addCriterion("task_log_det_key =", value, "taskLogDetKey");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetKeyNotEqualTo(String value) {
            addCriterion("task_log_det_key <>", value, "taskLogDetKey");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetKeyGreaterThan(String value) {
            addCriterion("task_log_det_key >", value, "taskLogDetKey");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetKeyGreaterThanOrEqualTo(String value) {
            addCriterion("task_log_det_key >=", value, "taskLogDetKey");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetKeyLessThan(String value) {
            addCriterion("task_log_det_key <", value, "taskLogDetKey");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetKeyLessThanOrEqualTo(String value) {
            addCriterion("task_log_det_key <=", value, "taskLogDetKey");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetKeyLike(String value) {
            addCriterion("task_log_det_key like", value, "taskLogDetKey");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetKeyNotLike(String value) {
            addCriterion("task_log_det_key not like", value, "taskLogDetKey");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetKeyIn(List<String> values) {
            addCriterion("task_log_det_key in", values, "taskLogDetKey");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetKeyNotIn(List<String> values) {
            addCriterion("task_log_det_key not in", values, "taskLogDetKey");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetKeyBetween(String value1, String value2) {
            addCriterion("task_log_det_key between", value1, value2, "taskLogDetKey");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetKeyNotBetween(String value1, String value2) {
            addCriterion("task_log_det_key not between", value1, value2, "taskLogDetKey");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetValueIsNull() {
            addCriterion("task_log_det_value is null");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetValueIsNotNull() {
            addCriterion("task_log_det_value is not null");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetValueEqualTo(String value) {
            addCriterion("task_log_det_value =", value, "taskLogDetValue");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetValueNotEqualTo(String value) {
            addCriterion("task_log_det_value <>", value, "taskLogDetValue");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetValueGreaterThan(String value) {
            addCriterion("task_log_det_value >", value, "taskLogDetValue");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetValueGreaterThanOrEqualTo(String value) {
            addCriterion("task_log_det_value >=", value, "taskLogDetValue");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetValueLessThan(String value) {
            addCriterion("task_log_det_value <", value, "taskLogDetValue");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetValueLessThanOrEqualTo(String value) {
            addCriterion("task_log_det_value <=", value, "taskLogDetValue");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetValueLike(String value) {
            addCriterion("task_log_det_value like", value, "taskLogDetValue");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetValueNotLike(String value) {
            addCriterion("task_log_det_value not like", value, "taskLogDetValue");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetValueIn(List<String> values) {
            addCriterion("task_log_det_value in", values, "taskLogDetValue");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetValueNotIn(List<String> values) {
            addCriterion("task_log_det_value not in", values, "taskLogDetValue");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetValueBetween(String value1, String value2) {
            addCriterion("task_log_det_value between", value1, value2, "taskLogDetValue");
            return (Criteria) this;
        }

        public Criteria andTaskLogDetValueNotBetween(String value1, String value2) {
            addCriterion("task_log_det_value not between", value1, value2, "taskLogDetValue");
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
     *  * task_log_det
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * task_log_det 2020-03-15
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