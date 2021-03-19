.class public Lcom/xiaomi/mysettingsdk/backup/SettingsBackupHelper;
.super Ljava/lang/Object;
.source "SettingsBackupHelper.java"


# static fields
.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "SettingsBackup"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;)Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;

    invoke-direct {v0}, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;-><init>()V

    .line 49
    invoke-interface {p2, p0, v0}, Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;->onBackupSettings(Landroid/content/Context;Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;)V

    .line 50
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 51
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 52
    invoke-virtual {v0}, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->getDataItems()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 56
    :try_start_0
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;

    .line 57
    invoke-virtual {v5}, Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    .line 58
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v3, "packageName"

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    .line 61
    invoke-interface {p2, p0}, Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;->getCurrentVersion(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "data"

    .line 62
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "utf-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 66
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 67
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {p0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    :goto_1
    :try_start_2
    const-string p1, "SettingsBackup"

    const-string p2, "JSONException in backupSettings"

    .line 71
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception p0

    :goto_2
    const-string p1, "SettingsBackup"

    const-string p2, "IOException in backupSettings"

    .line 69
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    :goto_3
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    :goto_4
    return-object v0

    :goto_5
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw p0
.end method

.method public static restoreFiles(Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;)V
    .locals 2

    .line 171
    invoke-virtual {p0}, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->getFileItems()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 174
    invoke-static {v1, v0}, Lcom/xiaomi/mysettingsdk/backup/SettingsBackupHelper;->restoreOneFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static restoreOneFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 6

    const/4 v0, 0x0

    .line 139
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 140
    :try_start_1
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 141
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 143
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    .line 144
    :try_start_2
    new-array v0, v0, [B

    .line 147
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 149
    invoke-virtual {p1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {p1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    move-object v0, v1

    move-object v1, p1

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v5, v1

    move-object v1, p1

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v1

    move-object v1, p1

    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_7

    :catch_2
    move-exception p1

    move-object v5, v1

    move-object v1, v0

    :goto_1
    move-object v0, v5

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v5, v1

    move-object v1, v0

    :goto_2
    move-object v0, v5

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v1, v0

    goto :goto_7

    :catch_4
    move-exception p1

    move-object v1, v0

    :goto_3
    :try_start_3
    const-string v2, "SettingsBackup"

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException in restoreFiles: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_5
    move-exception p1

    move-object v1, v0

    :goto_4
    const-string v2, "SettingsBackup"

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException in restoreFiles: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 159
    :goto_5
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    :goto_6
    return-void

    :catchall_3
    move-exception p0

    .line 159
    :goto_7
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw p0
.end method

.method public static restoreSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 92
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "line.separator"

    .line 95
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, "version"

    .line 104
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "data"

    .line 105
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 106
    new-instance v2, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;

    invoke-direct {v2}, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;-><init>()V

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    .line 108
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 109
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 111
    invoke-static {v4}, Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;->fromJson(Lorg/json/JSONObject;)Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;

    move-result-object v4

    .line 112
    iget-object v5, v4, Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->addAbstractDataItem(Ljava/lang/String;Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 116
    :cond_2
    invoke-interface {p2, p0, v2, p1}, Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;->onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :cond_3
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_6

    :catch_2
    move-exception p0

    :goto_2
    :try_start_2
    const-string p1, "SettingsBackup"

    const-string p2, "JSONException in restoreSettings"

    .line 121
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_3
    move-exception p0

    :goto_3
    const-string p1, "SettingsBackup"

    const-string p2, "IOException in restoreSettings"

    .line 119
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    :goto_4
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    :goto_5
    return-void

    :goto_6
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    throw p0
.end method
