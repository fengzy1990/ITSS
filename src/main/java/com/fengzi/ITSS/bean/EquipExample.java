package com.fengzi.ITSS.bean;

import java.util.ArrayList;
import java.util.List;

public class EquipExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public EquipExample() {
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

        public Criteria andEqIdIsNull() {
            addCriterion("eq_id is null");
            return (Criteria) this;
        }

        public Criteria andEqIdIsNotNull() {
            addCriterion("eq_id is not null");
            return (Criteria) this;
        }

        public Criteria andEqIdEqualTo(Integer value) {
            addCriterion("eq_id =", value, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdNotEqualTo(Integer value) {
            addCriterion("eq_id <>", value, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdGreaterThan(Integer value) {
            addCriterion("eq_id >", value, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("eq_id >=", value, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdLessThan(Integer value) {
            addCriterion("eq_id <", value, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdLessThanOrEqualTo(Integer value) {
            addCriterion("eq_id <=", value, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdIn(List<Integer> values) {
            addCriterion("eq_id in", values, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdNotIn(List<Integer> values) {
            addCriterion("eq_id not in", values, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdBetween(Integer value1, Integer value2) {
            addCriterion("eq_id between", value1, value2, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdNotBetween(Integer value1, Integer value2) {
            addCriterion("eq_id not between", value1, value2, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqNameIsNull() {
            addCriterion("eq_name is null");
            return (Criteria) this;
        }

        public Criteria andEqNameIsNotNull() {
            addCriterion("eq_name is not null");
            return (Criteria) this;
        }

        public Criteria andEqNameEqualTo(String value) {
            addCriterion("eq_name =", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameNotEqualTo(String value) {
            addCriterion("eq_name <>", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameGreaterThan(String value) {
            addCriterion("eq_name >", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameGreaterThanOrEqualTo(String value) {
            addCriterion("eq_name >=", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameLessThan(String value) {
            addCriterion("eq_name <", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameLessThanOrEqualTo(String value) {
            addCriterion("eq_name <=", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameLike(String value) {
            addCriterion("eq_name like", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameNotLike(String value) {
            addCriterion("eq_name not like", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameIn(List<String> values) {
            addCriterion("eq_name in", values, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameNotIn(List<String> values) {
            addCriterion("eq_name not in", values, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameBetween(String value1, String value2) {
            addCriterion("eq_name between", value1, value2, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameNotBetween(String value1, String value2) {
            addCriterion("eq_name not between", value1, value2, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqAddressIsNull() {
            addCriterion("eq_address is null");
            return (Criteria) this;
        }

        public Criteria andEqAddressIsNotNull() {
            addCriterion("eq_address is not null");
            return (Criteria) this;
        }

        public Criteria andEqAddressEqualTo(String value) {
            addCriterion("eq_address =", value, "eqAddress");
            return (Criteria) this;
        }

        public Criteria andEqAddressNotEqualTo(String value) {
            addCriterion("eq_address <>", value, "eqAddress");
            return (Criteria) this;
        }

        public Criteria andEqAddressGreaterThan(String value) {
            addCriterion("eq_address >", value, "eqAddress");
            return (Criteria) this;
        }

        public Criteria andEqAddressGreaterThanOrEqualTo(String value) {
            addCriterion("eq_address >=", value, "eqAddress");
            return (Criteria) this;
        }

        public Criteria andEqAddressLessThan(String value) {
            addCriterion("eq_address <", value, "eqAddress");
            return (Criteria) this;
        }

        public Criteria andEqAddressLessThanOrEqualTo(String value) {
            addCriterion("eq_address <=", value, "eqAddress");
            return (Criteria) this;
        }

        public Criteria andEqAddressLike(String value) {
            addCriterion("eq_address like", value, "eqAddress");
            return (Criteria) this;
        }

        public Criteria andEqAddressNotLike(String value) {
            addCriterion("eq_address not like", value, "eqAddress");
            return (Criteria) this;
        }

        public Criteria andEqAddressIn(List<String> values) {
            addCriterion("eq_address in", values, "eqAddress");
            return (Criteria) this;
        }

        public Criteria andEqAddressNotIn(List<String> values) {
            addCriterion("eq_address not in", values, "eqAddress");
            return (Criteria) this;
        }

        public Criteria andEqAddressBetween(String value1, String value2) {
            addCriterion("eq_address between", value1, value2, "eqAddress");
            return (Criteria) this;
        }

        public Criteria andEqAddressNotBetween(String value1, String value2) {
            addCriterion("eq_address not between", value1, value2, "eqAddress");
            return (Criteria) this;
        }

        public Criteria andEqPortIsNull() {
            addCriterion("eq_port is null");
            return (Criteria) this;
        }

        public Criteria andEqPortIsNotNull() {
            addCriterion("eq_port is not null");
            return (Criteria) this;
        }

        public Criteria andEqPortEqualTo(String value) {
            addCriterion("eq_port =", value, "eqPort");
            return (Criteria) this;
        }

        public Criteria andEqPortNotEqualTo(String value) {
            addCriterion("eq_port <>", value, "eqPort");
            return (Criteria) this;
        }

        public Criteria andEqPortGreaterThan(String value) {
            addCriterion("eq_port >", value, "eqPort");
            return (Criteria) this;
        }

        public Criteria andEqPortGreaterThanOrEqualTo(String value) {
            addCriterion("eq_port >=", value, "eqPort");
            return (Criteria) this;
        }

        public Criteria andEqPortLessThan(String value) {
            addCriterion("eq_port <", value, "eqPort");
            return (Criteria) this;
        }

        public Criteria andEqPortLessThanOrEqualTo(String value) {
            addCriterion("eq_port <=", value, "eqPort");
            return (Criteria) this;
        }

        public Criteria andEqPortLike(String value) {
            addCriterion("eq_port like", value, "eqPort");
            return (Criteria) this;
        }

        public Criteria andEqPortNotLike(String value) {
            addCriterion("eq_port not like", value, "eqPort");
            return (Criteria) this;
        }

        public Criteria andEqPortIn(List<String> values) {
            addCriterion("eq_port in", values, "eqPort");
            return (Criteria) this;
        }

        public Criteria andEqPortNotIn(List<String> values) {
            addCriterion("eq_port not in", values, "eqPort");
            return (Criteria) this;
        }

        public Criteria andEqPortBetween(String value1, String value2) {
            addCriterion("eq_port between", value1, value2, "eqPort");
            return (Criteria) this;
        }

        public Criteria andEqPortNotBetween(String value1, String value2) {
            addCriterion("eq_port not between", value1, value2, "eqPort");
            return (Criteria) this;
        }

        public Criteria andEqLoginnameIsNull() {
            addCriterion("eq_loginName is null");
            return (Criteria) this;
        }

        public Criteria andEqLoginnameIsNotNull() {
            addCriterion("eq_loginName is not null");
            return (Criteria) this;
        }

        public Criteria andEqLoginnameEqualTo(String value) {
            addCriterion("eq_loginName =", value, "eqLoginname");
            return (Criteria) this;
        }

        public Criteria andEqLoginnameNotEqualTo(String value) {
            addCriterion("eq_loginName <>", value, "eqLoginname");
            return (Criteria) this;
        }

        public Criteria andEqLoginnameGreaterThan(String value) {
            addCriterion("eq_loginName >", value, "eqLoginname");
            return (Criteria) this;
        }

        public Criteria andEqLoginnameGreaterThanOrEqualTo(String value) {
            addCriterion("eq_loginName >=", value, "eqLoginname");
            return (Criteria) this;
        }

        public Criteria andEqLoginnameLessThan(String value) {
            addCriterion("eq_loginName <", value, "eqLoginname");
            return (Criteria) this;
        }

        public Criteria andEqLoginnameLessThanOrEqualTo(String value) {
            addCriterion("eq_loginName <=", value, "eqLoginname");
            return (Criteria) this;
        }

        public Criteria andEqLoginnameLike(String value) {
            addCriterion("eq_loginName like", value, "eqLoginname");
            return (Criteria) this;
        }

        public Criteria andEqLoginnameNotLike(String value) {
            addCriterion("eq_loginName not like", value, "eqLoginname");
            return (Criteria) this;
        }

        public Criteria andEqLoginnameIn(List<String> values) {
            addCriterion("eq_loginName in", values, "eqLoginname");
            return (Criteria) this;
        }

        public Criteria andEqLoginnameNotIn(List<String> values) {
            addCriterion("eq_loginName not in", values, "eqLoginname");
            return (Criteria) this;
        }

        public Criteria andEqLoginnameBetween(String value1, String value2) {
            addCriterion("eq_loginName between", value1, value2, "eqLoginname");
            return (Criteria) this;
        }

        public Criteria andEqLoginnameNotBetween(String value1, String value2) {
            addCriterion("eq_loginName not between", value1, value2, "eqLoginname");
            return (Criteria) this;
        }

        public Criteria andEqLoginpasswordIsNull() {
            addCriterion("eq_loginPassword is null");
            return (Criteria) this;
        }

        public Criteria andEqLoginpasswordIsNotNull() {
            addCriterion("eq_loginPassword is not null");
            return (Criteria) this;
        }

        public Criteria andEqLoginpasswordEqualTo(String value) {
            addCriterion("eq_loginPassword =", value, "eqLoginpassword");
            return (Criteria) this;
        }

        public Criteria andEqLoginpasswordNotEqualTo(String value) {
            addCriterion("eq_loginPassword <>", value, "eqLoginpassword");
            return (Criteria) this;
        }

        public Criteria andEqLoginpasswordGreaterThan(String value) {
            addCriterion("eq_loginPassword >", value, "eqLoginpassword");
            return (Criteria) this;
        }

        public Criteria andEqLoginpasswordGreaterThanOrEqualTo(String value) {
            addCriterion("eq_loginPassword >=", value, "eqLoginpassword");
            return (Criteria) this;
        }

        public Criteria andEqLoginpasswordLessThan(String value) {
            addCriterion("eq_loginPassword <", value, "eqLoginpassword");
            return (Criteria) this;
        }

        public Criteria andEqLoginpasswordLessThanOrEqualTo(String value) {
            addCriterion("eq_loginPassword <=", value, "eqLoginpassword");
            return (Criteria) this;
        }

        public Criteria andEqLoginpasswordLike(String value) {
            addCriterion("eq_loginPassword like", value, "eqLoginpassword");
            return (Criteria) this;
        }

        public Criteria andEqLoginpasswordNotLike(String value) {
            addCriterion("eq_loginPassword not like", value, "eqLoginpassword");
            return (Criteria) this;
        }

        public Criteria andEqLoginpasswordIn(List<String> values) {
            addCriterion("eq_loginPassword in", values, "eqLoginpassword");
            return (Criteria) this;
        }

        public Criteria andEqLoginpasswordNotIn(List<String> values) {
            addCriterion("eq_loginPassword not in", values, "eqLoginpassword");
            return (Criteria) this;
        }

        public Criteria andEqLoginpasswordBetween(String value1, String value2) {
            addCriterion("eq_loginPassword between", value1, value2, "eqLoginpassword");
            return (Criteria) this;
        }

        public Criteria andEqLoginpasswordNotBetween(String value1, String value2) {
            addCriterion("eq_loginPassword not between", value1, value2, "eqLoginpassword");
            return (Criteria) this;
        }

        public Criteria andEqLoginmodIsNull() {
            addCriterion("eq_loginMod is null");
            return (Criteria) this;
        }

        public Criteria andEqLoginmodIsNotNull() {
            addCriterion("eq_loginMod is not null");
            return (Criteria) this;
        }

        public Criteria andEqLoginmodEqualTo(String value) {
            addCriterion("eq_loginMod =", value, "eqLoginmod");
            return (Criteria) this;
        }

        public Criteria andEqLoginmodNotEqualTo(String value) {
            addCriterion("eq_loginMod <>", value, "eqLoginmod");
            return (Criteria) this;
        }

        public Criteria andEqLoginmodGreaterThan(String value) {
            addCriterion("eq_loginMod >", value, "eqLoginmod");
            return (Criteria) this;
        }

        public Criteria andEqLoginmodGreaterThanOrEqualTo(String value) {
            addCriterion("eq_loginMod >=", value, "eqLoginmod");
            return (Criteria) this;
        }

        public Criteria andEqLoginmodLessThan(String value) {
            addCriterion("eq_loginMod <", value, "eqLoginmod");
            return (Criteria) this;
        }

        public Criteria andEqLoginmodLessThanOrEqualTo(String value) {
            addCriterion("eq_loginMod <=", value, "eqLoginmod");
            return (Criteria) this;
        }

        public Criteria andEqLoginmodLike(String value) {
            addCriterion("eq_loginMod like", value, "eqLoginmod");
            return (Criteria) this;
        }

        public Criteria andEqLoginmodNotLike(String value) {
            addCriterion("eq_loginMod not like", value, "eqLoginmod");
            return (Criteria) this;
        }

        public Criteria andEqLoginmodIn(List<String> values) {
            addCriterion("eq_loginMod in", values, "eqLoginmod");
            return (Criteria) this;
        }

        public Criteria andEqLoginmodNotIn(List<String> values) {
            addCriterion("eq_loginMod not in", values, "eqLoginmod");
            return (Criteria) this;
        }

        public Criteria andEqLoginmodBetween(String value1, String value2) {
            addCriterion("eq_loginMod between", value1, value2, "eqLoginmod");
            return (Criteria) this;
        }

        public Criteria andEqLoginmodNotBetween(String value1, String value2) {
            addCriterion("eq_loginMod not between", value1, value2, "eqLoginmod");
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