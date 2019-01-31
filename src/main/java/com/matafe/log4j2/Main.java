package com.matafe.log4j2;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Main {

    private static final Logger LOG = LogManager.getLogger(Main.class);

    public static void main(String[] args) {

	LOG.debug("Debug Sample Message");
	LOG.info("Info Sample Message");
	LOG.warn("Warn Sample Message");
	LOG.error("Error Sample Message");
	LOG.fatal("Fatal Sample Message");

	LOG.info("Info with parameter: {}.", "Hello, World");
    }
}
