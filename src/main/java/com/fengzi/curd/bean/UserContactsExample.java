package com.fengzi.curd.bean;

import java.util.ArrayList;
import java.util.List;

public class UserContactsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserContactsExample() {
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

        public Criteria andUsernameIsNull() {
            addCriterion("userName is null");
            return (Criteria) this;
        }

        public Criteria andUsernameIsNotNull() {
            addCriterion("userName is not null");
            return (Criteria) this;
        }

        public Criteria andUsernameEqualTo(String value) {
            addCriterion("userName =", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotEqualTo(String value) {
            addCriterion("userName <>", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThan(String value) {
            addCriterion("userName >", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThanOrEqualTo(String value) {
            addCriterion("userName >=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThan(String value) {
            addCriterion("userName <", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThanOrEqualTo(String value) {
            addCriterion("userName <=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLike(String value) {
            addCriterion("userName like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotLike(String value) {
            addCriterion("userName not like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameIn(List<String> values) {
            addCriterion("userName in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotIn(List<String> values) {
            addCriterion("userName not in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameBetween(String value1, String value2) {
            addCriterion("userName between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotBetween(String value1, String value2) {
            addCriterion("userName not between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andUseroriginIsNull() {
            addCriterion("userOrigin is null");
            return (Criteria) this;
        }

        public Criteria andUseroriginIsNotNull() {
            addCriterion("userOrigin is not null");
            return (Criteria) this;
        }

        public Criteria andUseroriginEqualTo(String value) {
            addCriterion("userOrigin =", value, "userorigin");
            return (Criteria) this;
        }

        public Criteria andUseroriginNotEqualTo(String value) {
            addCriterion("userOrigin <>", value, "userorigin");
            return (Criteria) this;
        }

        public Criteria andUseroriginGreaterThan(String value) {
            addCriterion("userOrigin >", value, "userorigin");
            return (Criteria) this;
        }

        public Criteria andUseroriginGreaterThanOrEqualTo(String value) {
            addCriterion("userOrigin >=", value, "userorigin");
            return (Criteria) this;
        }

        public Criteria andUseroriginLessThan(String value) {
            addCriterion("userOrigin <", value, "userorigin");
            return (Criteria) this;
        }

        public Criteria andUseroriginLessThanOrEqualTo(String value) {
            addCriterion("userOrigin <=", value, "userorigin");
            return (Criteria) this;
        }

        public Criteria andUseroriginLike(String value) {
            addCriterion("userOrigin like", value, "userorigin");
            return (Criteria) this;
        }

        public Criteria andUseroriginNotLike(String value) {
            addCriterion("userOrigin not like", value, "userorigin");
            return (Criteria) this;
        }

        public Criteria andUseroriginIn(List<String> values) {
            addCriterion("userOrigin in", values, "userorigin");
            return (Criteria) this;
        }

        public Criteria andUseroriginNotIn(List<String> values) {
            addCriterion("userOrigin not in", values, "userorigin");
            return (Criteria) this;
        }

        public Criteria andUseroriginBetween(String value1, String value2) {
            addCriterion("userOrigin between", value1, value2, "userorigin");
            return (Criteria) this;
        }

        public Criteria andUseroriginNotBetween(String value1, String value2) {
            addCriterion("userOrigin not between", value1, value2, "userorigin");
            return (Criteria) this;
        }

        public Criteria andUserphoneIsNull() {
            addCriterion("userPhone is null");
            return (Criteria) this;
        }

        public Criteria andUserphoneIsNotNull() {
            addCriterion("userPhone is not null");
            return (Criteria) this;
        }

        public Criteria andUserphoneEqualTo(String value) {
            addCriterion("userPhone =", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneNotEqualTo(String value) {
            addCriterion("userPhone <>", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneGreaterThan(String value) {
            addCriterion("userPhone >", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneGreaterThanOrEqualTo(String value) {
            addCriterion("userPhone >=", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneLessThan(String value) {
            addCriterion("userPhone <", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneLessThanOrEqualTo(String value) {
            addCriterion("userPhone <=", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneLike(String value) {
            addCriterion("userPhone like", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneNotLike(String value) {
            addCriterion("userPhone not like", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneIn(List<String> values) {
            addCriterion("userPhone in", values, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneNotIn(List<String> values) {
            addCriterion("userPhone not in", values, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneBetween(String value1, String value2) {
            addCriterion("userPhone between", value1, value2, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneNotBetween(String value1, String value2) {
            addCriterion("userPhone not between", value1, value2, "userphone");
            return (Criteria) this;
        }

        public Criteria andUseremailIsNull() {
            addCriterion("userEmail is null");
            return (Criteria) this;
        }

        public Criteria andUseremailIsNotNull() {
            addCriterion("userEmail is not null");
            return (Criteria) this;
        }

        public Criteria andUseremailEqualTo(String value) {
            addCriterion("userEmail =", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailNotEqualTo(String value) {
            addCriterion("userEmail <>", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailGreaterThan(String value) {
            addCriterion("userEmail >", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailGreaterThanOrEqualTo(String value) {
            addCriterion("userEmail >=", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailLessThan(String value) {
            addCriterion("userEmail <", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailLessThanOrEqualTo(String value) {
            addCriterion("userEmail <=", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailLike(String value) {
            addCriterion("userEmail like", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailNotLike(String value) {
            addCriterion("userEmail not like", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailIn(List<String> values) {
            addCriterion("userEmail in", values, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailNotIn(List<String> values) {
            addCriterion("userEmail not in", values, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailBetween(String value1, String value2) {
            addCriterion("userEmail between", value1, value2, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailNotBetween(String value1, String value2) {
            addCriterion("userEmail not between", value1, value2, "useremail");
            return (Criteria) this;
        }

        public Criteria andUserqqIsNull() {
            addCriterion("userQQ is null");
            return (Criteria) this;
        }

        public Criteria andUserqqIsNotNull() {
            addCriterion("userQQ is not null");
            return (Criteria) this;
        }

        public Criteria andUserqqEqualTo(String value) {
            addCriterion("userQQ =", value, "userqq");
            return (Criteria) this;
        }

        public Criteria andUserqqNotEqualTo(String value) {
            addCriterion("userQQ <>", value, "userqq");
            return (Criteria) this;
        }

        public Criteria andUserqqGreaterThan(String value) {
            addCriterion("userQQ >", value, "userqq");
            return (Criteria) this;
        }

        public Criteria andUserqqGreaterThanOrEqualTo(String value) {
            addCriterion("userQQ >=", value, "userqq");
            return (Criteria) this;
        }

        public Criteria andUserqqLessThan(String value) {
            addCriterion("userQQ <", value, "userqq");
            return (Criteria) this;
        }

        public Criteria andUserqqLessThanOrEqualTo(String value) {
            addCriterion("userQQ <=", value, "userqq");
            return (Criteria) this;
        }

        public Criteria andUserqqLike(String value) {
            addCriterion("userQQ like", value, "userqq");
            return (Criteria) this;
        }

        public Criteria andUserqqNotLike(String value) {
            addCriterion("userQQ not like", value, "userqq");
            return (Criteria) this;
        }

        public Criteria andUserqqIn(List<String> values) {
            addCriterion("userQQ in", values, "userqq");
            return (Criteria) this;
        }

        public Criteria andUserqqNotIn(List<String> values) {
            addCriterion("userQQ not in", values, "userqq");
            return (Criteria) this;
        }

        public Criteria andUserqqBetween(String value1, String value2) {
            addCriterion("userQQ between", value1, value2, "userqq");
            return (Criteria) this;
        }

        public Criteria andUserqqNotBetween(String value1, String value2) {
            addCriterion("userQQ not between", value1, value2, "userqq");
            return (Criteria) this;
        }

        public Criteria andUserwechatIsNull() {
            addCriterion("userWechat is null");
            return (Criteria) this;
        }

        public Criteria andUserwechatIsNotNull() {
            addCriterion("userWechat is not null");
            return (Criteria) this;
        }

        public Criteria andUserwechatEqualTo(String value) {
            addCriterion("userWechat =", value, "userwechat");
            return (Criteria) this;
        }

        public Criteria andUserwechatNotEqualTo(String value) {
            addCriterion("userWechat <>", value, "userwechat");
            return (Criteria) this;
        }

        public Criteria andUserwechatGreaterThan(String value) {
            addCriterion("userWechat >", value, "userwechat");
            return (Criteria) this;
        }

        public Criteria andUserwechatGreaterThanOrEqualTo(String value) {
            addCriterion("userWechat >=", value, "userwechat");
            return (Criteria) this;
        }

        public Criteria andUserwechatLessThan(String value) {
            addCriterion("userWechat <", value, "userwechat");
            return (Criteria) this;
        }

        public Criteria andUserwechatLessThanOrEqualTo(String value) {
            addCriterion("userWechat <=", value, "userwechat");
            return (Criteria) this;
        }

        public Criteria andUserwechatLike(String value) {
            addCriterion("userWechat like", value, "userwechat");
            return (Criteria) this;
        }

        public Criteria andUserwechatNotLike(String value) {
            addCriterion("userWechat not like", value, "userwechat");
            return (Criteria) this;
        }

        public Criteria andUserwechatIn(List<String> values) {
            addCriterion("userWechat in", values, "userwechat");
            return (Criteria) this;
        }

        public Criteria andUserwechatNotIn(List<String> values) {
            addCriterion("userWechat not in", values, "userwechat");
            return (Criteria) this;
        }

        public Criteria andUserwechatBetween(String value1, String value2) {
            addCriterion("userWechat between", value1, value2, "userwechat");
            return (Criteria) this;
        }

        public Criteria andUserwechatNotBetween(String value1, String value2) {
            addCriterion("userWechat not between", value1, value2, "userwechat");
            return (Criteria) this;
        }

        public Criteria andUsersystemIsNull() {
            addCriterion("userSystem is null");
            return (Criteria) this;
        }

        public Criteria andUsersystemIsNotNull() {
            addCriterion("userSystem is not null");
            return (Criteria) this;
        }

        public Criteria andUsersystemEqualTo(String value) {
            addCriterion("userSystem =", value, "usersystem");
            return (Criteria) this;
        }

        public Criteria andUsersystemNotEqualTo(String value) {
            addCriterion("userSystem <>", value, "usersystem");
            return (Criteria) this;
        }

        public Criteria andUsersystemGreaterThan(String value) {
            addCriterion("userSystem >", value, "usersystem");
            return (Criteria) this;
        }

        public Criteria andUsersystemGreaterThanOrEqualTo(String value) {
            addCriterion("userSystem >=", value, "usersystem");
            return (Criteria) this;
        }

        public Criteria andUsersystemLessThan(String value) {
            addCriterion("userSystem <", value, "usersystem");
            return (Criteria) this;
        }

        public Criteria andUsersystemLessThanOrEqualTo(String value) {
            addCriterion("userSystem <=", value, "usersystem");
            return (Criteria) this;
        }

        public Criteria andUsersystemLike(String value) {
            addCriterion("userSystem like", value, "usersystem");
            return (Criteria) this;
        }

        public Criteria andUsersystemNotLike(String value) {
            addCriterion("userSystem not like", value, "usersystem");
            return (Criteria) this;
        }

        public Criteria andUsersystemIn(List<String> values) {
            addCriterion("userSystem in", values, "usersystem");
            return (Criteria) this;
        }

        public Criteria andUsersystemNotIn(List<String> values) {
            addCriterion("userSystem not in", values, "usersystem");
            return (Criteria) this;
        }

        public Criteria andUsersystemBetween(String value1, String value2) {
            addCriterion("userSystem between", value1, value2, "usersystem");
            return (Criteria) this;
        }

        public Criteria andUsersystemNotBetween(String value1, String value2) {
            addCriterion("userSystem not between", value1, value2, "usersystem");
            return (Criteria) this;
        }

        public Criteria andUserremarkIsNull() {
            addCriterion("userRemark is null");
            return (Criteria) this;
        }

        public Criteria andUserremarkIsNotNull() {
            addCriterion("userRemark is not null");
            return (Criteria) this;
        }

        public Criteria andUserremarkEqualTo(String value) {
            addCriterion("userRemark =", value, "userremark");
            return (Criteria) this;
        }

        public Criteria andUserremarkNotEqualTo(String value) {
            addCriterion("userRemark <>", value, "userremark");
            return (Criteria) this;
        }

        public Criteria andUserremarkGreaterThan(String value) {
            addCriterion("userRemark >", value, "userremark");
            return (Criteria) this;
        }

        public Criteria andUserremarkGreaterThanOrEqualTo(String value) {
            addCriterion("userRemark >=", value, "userremark");
            return (Criteria) this;
        }

        public Criteria andUserremarkLessThan(String value) {
            addCriterion("userRemark <", value, "userremark");
            return (Criteria) this;
        }

        public Criteria andUserremarkLessThanOrEqualTo(String value) {
            addCriterion("userRemark <=", value, "userremark");
            return (Criteria) this;
        }

        public Criteria andUserremarkLike(String value) {
            addCriterion("userRemark like", value, "userremark");
            return (Criteria) this;
        }

        public Criteria andUserremarkNotLike(String value) {
            addCriterion("userRemark not like", value, "userremark");
            return (Criteria) this;
        }

        public Criteria andUserremarkIn(List<String> values) {
            addCriterion("userRemark in", values, "userremark");
            return (Criteria) this;
        }

        public Criteria andUserremarkNotIn(List<String> values) {
            addCriterion("userRemark not in", values, "userremark");
            return (Criteria) this;
        }

        public Criteria andUserremarkBetween(String value1, String value2) {
            addCriterion("userRemark between", value1, value2, "userremark");
            return (Criteria) this;
        }

        public Criteria andUserremarkNotBetween(String value1, String value2) {
            addCriterion("userRemark not between", value1, value2, "userremark");
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