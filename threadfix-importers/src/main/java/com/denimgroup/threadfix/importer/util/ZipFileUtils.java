package com.denimgroup.threadfix.importer.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/**
 * Created by mac on 12/18/13.
 */
public class ZipFileUtils {

    private ZipFileUtils(){}

    public static ZipEntry getZipEntry(String name, ZipFile zipFile) {
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        while (entries.hasMoreElements()) {
            ZipEntry entry = entries.nextElement();
            if (entry.getName().endsWith(name)) {
                return entry;
            }
        }
        return null;
    }

    public static InputStream getFileStream(String name, ZipFile zipFile) throws IOException {
        ZipEntry entry = getZipEntry(name, zipFile);

        if (entry == null) {
            return null;
        } else {
            return zipFile.getInputStream(entry);
        }
    }
}