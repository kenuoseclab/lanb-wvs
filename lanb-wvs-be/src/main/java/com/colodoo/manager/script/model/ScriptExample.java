package com.colodoo.manager.script.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ScriptExample {
    /**
     * script
     */
    protected String orderByClause;

    /**
     * script
     */
    protected boolean distinct;

    /**
     * script
     */
    protected List<Criteria> oredCriteria;

    /**
     *
     * @mbg.generated 2020-07-26
     */
    public ScriptExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     *
     * @mbg.generated 2020-07-26
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     *
     * @mbg.generated 2020-07-26
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     *
     * @mbg.generated 2020-07-26
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     *
     * @mbg.generated 2020-07-26
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     *
     * @mbg.generated 2020-07-26
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     *
     * @mbg.generated 2020-07-26
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     *
     * @mbg.generated 2020-07-26
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     *
     * @mbg.generated 2020-07-26
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
     * @mbg.generated 2020-07-26
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     *
     * @mbg.generated 2020-07-26
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * script 2020-07-26
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

        public Criteria andScriptIdIsNull() {
            addCriterion("script_id is null");
            return (Criteria) this;
        }

        public Criteria andScriptIdIsNotNull() {
            addCriterion("script_id is not null");
            return (Criteria) this;
        }

        public Criteria andScriptIdEqualTo(String value) {
            addCriterion("script_id =", value, "scriptId");
            return (Criteria) this;
        }

        public Criteria andScriptIdNotEqualTo(String value) {
            addCriterion("script_id <>", value, "scriptId");
            return (Criteria) this;
        }

        public Criteria andScriptIdGreaterThan(String value) {
            addCriterion("script_id >", value, "scriptId");
            return (Criteria) this;
        }

        public Criteria andScriptIdGreaterThanOrEqualTo(String value) {
            addCriterion("script_id >=", value, "scriptId");
            return (Criteria) this;
        }

        public Criteria andScriptIdLessThan(String value) {
            addCriterion("script_id <", value, "scriptId");
            return (Criteria) this;
        }

        public Criteria andScriptIdLessThanOrEqualTo(String value) {
            addCriterion("script_id <=", value, "scriptId");
            return (Criteria) this;
        }

        public Criteria andScriptIdLike(String value) {
            addCriterion("script_id like", value, "scriptId");
            return (Criteria) this;
        }

        public Criteria andScriptIdNotLike(String value) {
            addCriterion("script_id not like", value, "scriptId");
            return (Criteria) this;
        }

        public Criteria andScriptIdIn(List<String> values) {
            addCriterion("script_id in", values, "scriptId");
            return (Criteria) this;
        }

        public Criteria andScriptIdNotIn(List<String> values) {
            addCriterion("script_id not in", values, "scriptId");
            return (Criteria) this;
        }

        public Criteria andScriptIdBetween(String value1, String value2) {
            addCriterion("script_id between", value1, value2, "scriptId");
            return (Criteria) this;
        }

        public Criteria andScriptIdNotBetween(String value1, String value2) {
            addCriterion("script_id not between", value1, value2, "scriptId");
            return (Criteria) this;
        }

        public Criteria andScriptNameIsNull() {
            addCriterion("script_name is null");
            return (Criteria) this;
        }

        public Criteria andScriptNameIsNotNull() {
            addCriterion("script_name is not null");
            return (Criteria) this;
        }

        public Criteria andScriptNameEqualTo(String value) {
            addCriterion("script_name =", value, "scriptName");
            return (Criteria) this;
        }

        public Criteria andScriptNameNotEqualTo(String value) {
            addCriterion("script_name <>", value, "scriptName");
            return (Criteria) this;
        }

        public Criteria andScriptNameGreaterThan(String value) {
            addCriterion("script_name >", value, "scriptName");
            return (Criteria) this;
        }

        public Criteria andScriptNameGreaterThanOrEqualTo(String value) {
            addCriterion("script_name >=", value, "scriptName");
            return (Criteria) this;
        }

        public Criteria andScriptNameLessThan(String value) {
            addCriterion("script_name <", value, "scriptName");
            return (Criteria) this;
        }

        public Criteria andScriptNameLessThanOrEqualTo(String value) {
            addCriterion("script_name <=", value, "scriptName");
            return (Criteria) this;
        }

        public Criteria andScriptNameLike(String value) {
            addCriterion("script_name like", value, "scriptName");
            return (Criteria) this;
        }

        public Criteria andScriptNameNotLike(String value) {
            addCriterion("script_name not like", value, "scriptName");
            return (Criteria) this;
        }

        public Criteria andScriptNameIn(List<String> values) {
            addCriterion("script_name in", values, "scriptName");
            return (Criteria) this;
        }

        public Criteria andScriptNameNotIn(List<String> values) {
            addCriterion("script_name not in", values, "scriptName");
            return (Criteria) this;
        }

        public Criteria andScriptNameBetween(String value1, String value2) {
            addCriterion("script_name between", value1, value2, "scriptName");
            return (Criteria) this;
        }

        public Criteria andScriptNameNotBetween(String value1, String value2) {
            addCriterion("script_name not between", value1, value2, "scriptName");
            return (Criteria) this;
        }

        public Criteria andScriptTypeIsNull() {
            addCriterion("script_type is null");
            return (Criteria) this;
        }

        public Criteria andScriptTypeIsNotNull() {
            addCriterion("script_type is not null");
            return (Criteria) this;
        }

        public Criteria andScriptTypeEqualTo(String value) {
            addCriterion("script_type =", value, "scriptType");
            return (Criteria) this;
        }

        public Criteria andScriptTypeNotEqualTo(String value) {
            addCriterion("script_type <>", value, "scriptType");
            return (Criteria) this;
        }

        public Criteria andScriptTypeGreaterThan(String value) {
            addCriterion("script_type >", value, "scriptType");
            return (Criteria) this;
        }

        public Criteria andScriptTypeGreaterThanOrEqualTo(String value) {
            addCriterion("script_type >=", value, "scriptType");
            return (Criteria) this;
        }

        public Criteria andScriptTypeLessThan(String value) {
            addCriterion("script_type <", value, "scriptType");
            return (Criteria) this;
        }

        public Criteria andScriptTypeLessThanOrEqualTo(String value) {
            addCriterion("script_type <=", value, "scriptType");
            return (Criteria) this;
        }

        public Criteria andScriptTypeLike(String value) {
            addCriterion("script_type like", value, "scriptType");
            return (Criteria) this;
        }

        public Criteria andScriptTypeNotLike(String value) {
            addCriterion("script_type not like", value, "scriptType");
            return (Criteria) this;
        }

        public Criteria andScriptTypeIn(List<String> values) {
            addCriterion("script_type in", values, "scriptType");
            return (Criteria) this;
        }

        public Criteria andScriptTypeNotIn(List<String> values) {
            addCriterion("script_type not in", values, "scriptType");
            return (Criteria) this;
        }

        public Criteria andScriptTypeBetween(String value1, String value2) {
            addCriterion("script_type between", value1, value2, "scriptType");
            return (Criteria) this;
        }

        public Criteria andScriptTypeNotBetween(String value1, String value2) {
            addCriterion("script_type not between", value1, value2, "scriptType");
            return (Criteria) this;
        }

        public Criteria andBugIdIsNull() {
            addCriterion("bug_id is null");
            return (Criteria) this;
        }

        public Criteria andBugIdIsNotNull() {
            addCriterion("bug_id is not null");
            return (Criteria) this;
        }

        public Criteria andBugIdEqualTo(String value) {
            addCriterion("bug_id =", value, "bugId");
            return (Criteria) this;
        }

        public Criteria andBugIdNotEqualTo(String value) {
            addCriterion("bug_id <>", value, "bugId");
            return (Criteria) this;
        }

        public Criteria andBugIdGreaterThan(String value) {
            addCriterion("bug_id >", value, "bugId");
            return (Criteria) this;
        }

        public Criteria andBugIdGreaterThanOrEqualTo(String value) {
            addCriterion("bug_id >=", value, "bugId");
            return (Criteria) this;
        }

        public Criteria andBugIdLessThan(String value) {
            addCriterion("bug_id <", value, "bugId");
            return (Criteria) this;
        }

        public Criteria andBugIdLessThanOrEqualTo(String value) {
            addCriterion("bug_id <=", value, "bugId");
            return (Criteria) this;
        }

        public Criteria andBugIdLike(String value) {
            addCriterion("bug_id like", value, "bugId");
            return (Criteria) this;
        }

        public Criteria andBugIdNotLike(String value) {
            addCriterion("bug_id not like", value, "bugId");
            return (Criteria) this;
        }

        public Criteria andBugIdIn(List<String> values) {
            addCriterion("bug_id in", values, "bugId");
            return (Criteria) this;
        }

        public Criteria andBugIdNotIn(List<String> values) {
            addCriterion("bug_id not in", values, "bugId");
            return (Criteria) this;
        }

        public Criteria andBugIdBetween(String value1, String value2) {
            addCriterion("bug_id between", value1, value2, "bugId");
            return (Criteria) this;
        }

        public Criteria andBugIdNotBetween(String value1, String value2) {
            addCriterion("bug_id not between", value1, value2, "bugId");
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
     *  * script
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * script 2020-07-26
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