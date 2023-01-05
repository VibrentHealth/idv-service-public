package com.vibrent.idv.service.impl;

import com.vibrent.vrp.oauth.integration.service.OAuthHookService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class OAuthHookServiceImpl implements OAuthHookService {
    @Override
    public void performActiveConnActions(String keycloakId, String oAuthServiceId, List<String> scopes) {
        log.info("IdvService | Id verification done for keycloakId:{}",keycloakId);
    }
}
