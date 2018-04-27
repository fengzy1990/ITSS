package com.fengzi.ITSS.service;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.beans.factory.annotation.Value;

@Configurable
public class ConfigService {
	@Value("${jdbc.crt}")
	public String jdbcrt;
}
