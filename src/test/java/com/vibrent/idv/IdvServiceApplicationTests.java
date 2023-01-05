package com.vibrent.idv;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.boot.test.context.SpringBootTest;

@RunWith(MockitoJUnitRunner.class)
@SpringBootTest
@Tag("unitTest")
@DisplayName("Sample Application Unit Test")
public class IdvServiceApplicationTests {

  @Test
  @DisplayName("Test sample context loads")
  public void contextLoads() {
      // This method needs implementing
      Assertions.assertTrue(true);
  }

}
