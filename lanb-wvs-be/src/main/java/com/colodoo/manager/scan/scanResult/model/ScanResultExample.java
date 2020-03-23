package com.colodoo.manager.scan.scanResult.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ScanResultExample {
    /**
     * scan_result
     */
    protected String orderByClause;

    /**
     * scan_result
     */
    protected boolean distinct;

    /**
     * scan_result
     */
    protected List<Criteria> oredCriteria;

    /**
     *
     * @mbg.generated 2020-03-23
     */
    public ScanResultExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     *
     * @mbg.generated 2020-03-23
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     *
     * @mbg.generated 2020-03-23
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     *
     * @mbg.generated 2020-03-23
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     *
     * @mbg.generated 2020-03-23
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     *
     * @mbg.generated 2020-03-23
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     *
     * @mbg.generated 2020-03-23
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     *
     * @mbg.generated 2020-03-23
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     *
     * @mbg.generated 2020-03-23
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
     * @mbg.generated 2020-03-23
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     *
     * @mbg.generated 2020-03-23
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * scan_result 2020-03-23
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

        public Criteria andScanResultIdIsNull() {
            addCriterion("scan_result_id is null");
            return (Criteria) this;
        }

        public Criteria andScanResultIdIsNotNull() {
            addCriterion("scan_result_id is not null");
            return (Criteria) this;
        }

        public Criteria andScanResultIdEqualTo(String value) {
            addCriterion("scan_result_id =", value, "scanResultId");
            return (Criteria) this;
        }

        public Criteria andScanResultIdNotEqualTo(String value) {
            addCriterion("scan_result_id <>", value, "scanResultId");
            return (Criteria) this;
        }

        public Criteria andScanResultIdGreaterThan(String value) {
            addCriterion("scan_result_id >", value, "scanResultId");
            return (Criteria) this;
        }

        public Criteria andScanResultIdGreaterThanOrEqualTo(String value) {
            addCriterion("scan_result_id >=", value, "scanResultId");
            return (Criteria) this;
        }

        public Criteria andScanResultIdLessThan(String value) {
            addCriterion("scan_result_id <", value, "scanResultId");
            return (Criteria) this;
        }

        public Criteria andScanResultIdLessThanOrEqualTo(String value) {
            addCriterion("scan_result_id <=", value, "scanResultId");
            return (Criteria) this;
        }

        public Criteria andScanResultIdLike(String value) {
            addCriterion("scan_result_id like", value, "scanResultId");
            return (Criteria) this;
        }

        public Criteria andScanResultIdNotLike(String value) {
            addCriterion("scan_result_id not like", value, "scanResultId");
            return (Criteria) this;
        }

        public Criteria andScanResultIdIn(List<String> values) {
            addCriterion("scan_result_id in", values, "scanResultId");
            return (Criteria) this;
        }

        public Criteria andScanResultIdNotIn(List<String> values) {
            addCriterion("scan_result_id not in", values, "scanResultId");
            return (Criteria) this;
        }

        public Criteria andScanResultIdBetween(String value1, String value2) {
            addCriterion("scan_result_id between", value1, value2, "scanResultId");
            return (Criteria) this;
        }

        public Criteria andScanResultIdNotBetween(String value1, String value2) {
            addCriterion("scan_result_id not between", value1, value2, "scanResultId");
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

        public Criteria andAssetIdIsNull() {
            addCriterion("asset_id is null");
            return (Criteria) this;
        }

        public Criteria andAssetIdIsNotNull() {
            addCriterion("asset_id is not null");
            return (Criteria) this;
        }

        public Criteria andAssetIdEqualTo(String value) {
            addCriterion("asset_id =", value, "assetId");
            return (Criteria) this;
        }

        public Criteria andAssetIdNotEqualTo(String value) {
            addCriterion("asset_id <>", value, "assetId");
            return (Criteria) this;
        }

        public Criteria andAssetIdGreaterThan(String value) {
            addCriterion("asset_id >", value, "assetId");
            return (Criteria) this;
        }

        public Criteria andAssetIdGreaterThanOrEqualTo(String value) {
            addCriterion("asset_id >=", value, "assetId");
            return (Criteria) this;
        }

        public Criteria andAssetIdLessThan(String value) {
            addCriterion("asset_id <", value, "assetId");
            return (Criteria) this;
        }

        public Criteria andAssetIdLessThanOrEqualTo(String value) {
            addCriterion("asset_id <=", value, "assetId");
            return (Criteria) this;
        }

        public Criteria andAssetIdLike(String value) {
            addCriterion("asset_id like", value, "assetId");
            return (Criteria) this;
        }

        public Criteria andAssetIdNotLike(String value) {
            addCriterion("asset_id not like", value, "assetId");
            return (Criteria) this;
        }

        public Criteria andAssetIdIn(List<String> values) {
            addCriterion("asset_id in", values, "assetId");
            return (Criteria) this;
        }

        public Criteria andAssetIdNotIn(List<String> values) {
            addCriterion("asset_id not in", values, "assetId");
            return (Criteria) this;
        }

        public Criteria andAssetIdBetween(String value1, String value2) {
            addCriterion("asset_id between", value1, value2, "assetId");
            return (Criteria) this;
        }

        public Criteria andAssetIdNotBetween(String value1, String value2) {
            addCriterion("asset_id not between", value1, value2, "assetId");
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

        public Criteria andScanResultIsNull() {
            addCriterion("scan_result is null");
            return (Criteria) this;
        }

        public Criteria andScanResultIsNotNull() {
            addCriterion("scan_result is not null");
            return (Criteria) this;
        }

        public Criteria andScanResultEqualTo(String value) {
            addCriterion("scan_result =", value, "scanResult");
            return (Criteria) this;
        }

        public Criteria andScanResultNotEqualTo(String value) {
            addCriterion("scan_result <>", value, "scanResult");
            return (Criteria) this;
        }

        public Criteria andScanResultGreaterThan(String value) {
            addCriterion("scan_result >", value, "scanResult");
            return (Criteria) this;
        }

        public Criteria andScanResultGreaterThanOrEqualTo(String value) {
            addCriterion("scan_result >=", value, "scanResult");
            return (Criteria) this;
        }

        public Criteria andScanResultLessThan(String value) {
            addCriterion("scan_result <", value, "scanResult");
            return (Criteria) this;
        }

        public Criteria andScanResultLessThanOrEqualTo(String value) {
            addCriterion("scan_result <=", value, "scanResult");
            return (Criteria) this;
        }

        public Criteria andScanResultLike(String value) {
            addCriterion("scan_result like", value, "scanResult");
            return (Criteria) this;
        }

        public Criteria andScanResultNotLike(String value) {
            addCriterion("scan_result not like", value, "scanResult");
            return (Criteria) this;
        }

        public Criteria andScanResultIn(List<String> values) {
            addCriterion("scan_result in", values, "scanResult");
            return (Criteria) this;
        }

        public Criteria andScanResultNotIn(List<String> values) {
            addCriterion("scan_result not in", values, "scanResult");
            return (Criteria) this;
        }

        public Criteria andScanResultBetween(String value1, String value2) {
            addCriterion("scan_result between", value1, value2, "scanResult");
            return (Criteria) this;
        }

        public Criteria andScanResultNotBetween(String value1, String value2) {
            addCriterion("scan_result not between", value1, value2, "scanResult");
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
     *  * scan_result
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * scan_result 2020-03-23
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