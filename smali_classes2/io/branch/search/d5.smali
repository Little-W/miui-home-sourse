.class public Lio/branch/search/d5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/brotli/dec/BrotliInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/brotli/dec/BrotliInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/brotli/dec/BrotliInputStream;->read([B)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/brotli/dec/BrotliInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/brotli/dec/BrotliInputStream;->close()V

    :cond_1
    throw p0

    :catch_1
    move-exception p0

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/brotli/dec/BrotliInputStream;->close()V

    :cond_2
    const-string v0, "Branchzip.brotliUnzip"

    const-string v1, "Exception brotli-unzipping network response."

    invoke-static {v0, v1, p0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static b([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3, v1}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    const-string p0, "Branchzip.unzip"

    const-string v1, "Exception unzipping network response."

    invoke-static {p0, v1, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static c([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/util/zip/DeflaterInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3, v1}, Ljava/util/zip/DeflaterInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/DeflaterInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/zip/DeflaterInputStream;->close()V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/zip/DeflaterInputStream;->close()V

    const-string p0, "Branchzip.zip"

    const-string v1, "Exception zipping network response"

    invoke-static {p0, v1, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
