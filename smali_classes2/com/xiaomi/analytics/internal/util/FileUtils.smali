.class public Lcom/xiaomi/analytics/internal/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static deleteAllFiles(Ljava/io/File;)V
    .locals 4

    .line 19
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/FileUtils;->deleteDir(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_0
    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/FileUtils;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static deleteAllFiles(Ljava/lang/String;)V
    .locals 1

    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/FileUtils;->deleteAllFiles(Ljava/io/File;)V

    return-void
.end method

.method public static deleteDir(Ljava/lang/String;)V
    .locals 1

    .line 34
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/FileUtils;->deleteAllFiles(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
