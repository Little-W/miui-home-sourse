.class public Lcom/xiaomi/analytics/internal/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# direct methods
.method public static closeSafely(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 52
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "IOUtil"

    .line 56
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "closeSafely e"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static inputStream2ByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 21
    invoke-static {p0, v0}, Lcom/xiaomi/analytics/internal/util/IOUtil;->inputStream2ByteArray(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static inputStream2ByteArray(Ljava/io/InputStream;I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 32
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    new-array p1, p1, [B

    .line 40
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 45
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 48
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
