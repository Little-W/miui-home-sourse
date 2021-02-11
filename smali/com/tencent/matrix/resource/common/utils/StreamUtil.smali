.class public final Lcom/tencent/matrix/resource/common/utils/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method public static closeQuietly(Ljava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 42
    :cond_0
    :try_start_0
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 43
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 44
    :cond_1
    instance-of v0, p0, Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_2

    .line 45
    check-cast p0, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static copyFileToStream(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 71
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 73
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, v0, v1, p0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-static {v2}, Lcom/tencent/matrix/resource/common/utils/StreamUtil;->closeQuietly(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v1}, Lcom/tencent/matrix/resource/common/utils/StreamUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 81
    throw p0
.end method
