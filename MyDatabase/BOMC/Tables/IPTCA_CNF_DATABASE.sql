CREATE TABLE bomc.iptca_cnf_database (
  dbcfg_id NUMBER(10) NOT NULL,
  cfgname VARCHAR2(255 BYTE) NOT NULL,
  ds_id NUMBER(10) NOT NULL,
  isactive NUMBER(1) DEFAULT 1 NOT NULL,
  sub_type NUMBER(10) DEFAULT 1 NOT NULL,
  where_item VARCHAR2(255 BYTE),
  order_item VARCHAR2(255 BYTE),
  is_save_result NUMBER(1) DEFAULT 0 NOT NULL,
  is_send_alarm NUMBER(1) DEFAULT 1 NOT NULL,
  shuc_plan VARCHAR2(255 BYTE),
  all_timeout NUMBER(10) DEFAULT 60 NOT NULL,
  cfg_start_time DATE,
  cfg_end_time DATE,
  fault_cfg_id NUMBER(10),
  shuc_crontab VARCHAR2(64 BYTE),
  judgeid VARCHAR2(128 BYTE),
  create_time DATE DEFAULT sysdate,
  modify_time DATE DEFAULT sysdate,
  charge_name_txt VARCHAR2(255 BYTE),
  is_send_cancelalarm NUMBER(1),
  col_proble VARCHAR2(32 BYTE) DEFAULT '_system' NOT NULL,
  busi_sys_id NUMBER,
  busi_module_id NUMBER,
  is_threshold_incremental NUMBER(1) DEFAULT 0,
  shield_start_time DATE,
  shield_end_time DATE,
  valid_period NUMBER(1),
  valid_crontab VARCHAR2(255 BYTE),
  threshold_incremental_params VARCHAR2(255 BYTE),
  last_excutetime DATE,
  is_topo NUMBER DEFAULT 0,
  created_date DATE,
  created_userid VARCHAR2(100 BYTE),
  created_username VARCHAR2(100 BYTE),
  modified_userid VARCHAR2(100 BYTE),
  modified_username VARCHAR2(100 BYTE),
  modified_action VARCHAR2(100 BYTE),
  check_status NUMBER(1),
  check_userid VARCHAR2(100 BYTE),
  check_username VARCHAR2(100 BYTE),
  modified_count NUMBER DEFAULT 0,
  is_delete NUMBER DEFAULT 0,
  check_date DATE,
  modified_date DATE,
  tag_table_name VARCHAR2(1000 BYTE),
  tag_table_field VARCHAR2(1000 BYTE),
  CONSTRAINT pk_dbcfg_id PRIMARY KEY (dbcfg_id)
);
COMMENT ON TABLE bomc.iptca_cnf_database IS '数据库类配置';
COMMENT ON COLUMN bomc.iptca_cnf_database.dbcfg_id IS '采集配置ID';
COMMENT ON COLUMN bomc.iptca_cnf_database.cfgname IS '配置名称';
COMMENT ON COLUMN bomc.iptca_cnf_database.ds_id IS '数据源ID';
COMMENT ON COLUMN bomc.iptca_cnf_database.isactive IS '配置是否生效';
COMMENT ON COLUMN bomc.iptca_cnf_database.sub_type IS '数据库配置子类';
COMMENT ON COLUMN bomc.iptca_cnf_database.where_item IS 'Where条件';
COMMENT ON COLUMN bomc.iptca_cnf_database.order_item IS 'Order条件';
COMMENT ON COLUMN bomc.iptca_cnf_database.is_save_result IS '是否保存数据';
COMMENT ON COLUMN bomc.iptca_cnf_database.is_send_alarm IS '是否发送告警';
COMMENT ON COLUMN bomc.iptca_cnf_database.shuc_plan IS '调度计划';
COMMENT ON COLUMN bomc.iptca_cnf_database.all_timeout IS '超时时间(秒)';
COMMENT ON COLUMN bomc.iptca_cnf_database.cfg_start_time IS '配置生效开始时间';
COMMENT ON COLUMN bomc.iptca_cnf_database.cfg_end_time IS '配置生效结束时间';
COMMENT ON COLUMN bomc.iptca_cnf_database.fault_cfg_id IS '告警相关配置';
COMMENT ON COLUMN bomc.iptca_cnf_database.shuc_crontab IS '调度crontab串';
COMMENT ON COLUMN bomc.iptca_cnf_database.judgeid IS '前转条件';
COMMENT ON COLUMN bomc.iptca_cnf_database.create_time IS '添加时间';
COMMENT ON COLUMN bomc.iptca_cnf_database.modify_time IS '修改时间';
COMMENT ON COLUMN bomc.iptca_cnf_database.charge_name_txt IS '已废，已转至iptca_cnf_fmcfg中的chargetext';
COMMENT ON COLUMN bomc.iptca_cnf_database.is_send_cancelalarm IS '是否发送取消告警';
COMMENT ON COLUMN bomc.iptca_cnf_database.col_proble IS '_system : 表示由系统规则来分配采集机执行.其它: 为采集机名称';
COMMENT ON COLUMN bomc.iptca_cnf_database.busi_sys_id IS '业务系统id';
COMMENT ON COLUMN bomc.iptca_cnf_database.busi_module_id IS '业务模块id';
COMMENT ON COLUMN bomc.iptca_cnf_database.is_threshold_incremental IS '增量判定，选中值为1
';
COMMENT ON COLUMN bomc.iptca_cnf_database.shield_start_time IS '屏蔽开始时间，精确到分';
COMMENT ON COLUMN bomc.iptca_cnf_database.shield_end_time IS '屏蔽结束时间，精确到分';
COMMENT ON COLUMN bomc.iptca_cnf_database.valid_period IS '有效时间，周期，1：每天，2：每周，3：每月';
COMMENT ON COLUMN bomc.iptca_cnf_database.valid_crontab IS '有效时间，crontab';
COMMENT ON COLUMN bomc.iptca_cnf_database.threshold_incremental_params IS '增量参数,格式kpi=user_cnt,inc=2000,cycletimes=5; 其中kpi为指标对象，inc为增量，cycletimes为周期次数
';
COMMENT ON COLUMN bomc.iptca_cnf_database.last_excutetime IS '最后一次采集时间';
COMMENT ON COLUMN bomc.iptca_cnf_database.is_topo IS '是否关联业务拓扑
1 关联,0 不关联,默认值为1';
COMMENT ON COLUMN bomc.iptca_cnf_database.created_date IS '创建日期';
COMMENT ON COLUMN bomc.iptca_cnf_database.created_userid IS '创建人ID';
COMMENT ON COLUMN bomc.iptca_cnf_database.created_username IS '创建人';
COMMENT ON COLUMN bomc.iptca_cnf_database.modified_userid IS '修改人ID';
COMMENT ON COLUMN bomc.iptca_cnf_database.modified_username IS '修改人';
COMMENT ON COLUMN bomc.iptca_cnf_database.modified_action IS '修改操作  add:新增,imp_add:导入新增,update:编辑,imp_update:导入编辑,copy:复制,delete:逻辑删除,delete_true:彻底删除 ';
COMMENT ON COLUMN bomc.iptca_cnf_database.check_status IS '核查状态 0:未审核,1:短信提醒创建人,2:审核通过';
COMMENT ON COLUMN bomc.iptca_cnf_database.check_userid IS '核查人ID';
COMMENT ON COLUMN bomc.iptca_cnf_database.check_username IS '核查人';
COMMENT ON COLUMN bomc.iptca_cnf_database.modified_count IS '修改次数';
COMMENT ON COLUMN bomc.iptca_cnf_database.is_delete IS '是否删除,0:未删除,1逻辑删除';
COMMENT ON COLUMN bomc.iptca_cnf_database.check_date IS '核查日期';
COMMENT ON COLUMN bomc.iptca_cnf_database.modified_date IS '修改人日期';
COMMENT ON COLUMN bomc.iptca_cnf_database.tag_table_name IS '涉及的表';
COMMENT ON COLUMN bomc.iptca_cnf_database.tag_table_field IS '涉及的表字段';