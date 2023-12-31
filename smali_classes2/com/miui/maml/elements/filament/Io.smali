.class public Lcom/miui/maml/elements/filament/Io;
.super Ljava/lang/Object;
.source "Io.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readAsset(Lcom/miui/maml/ResourceManager;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [J

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 26
    aget-wide v2, v0, p1

    long-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    invoke-static {p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    .line 28
    invoke-interface {v1, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 29
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz v1, :cond_1

    .line 36
    :try_start_2
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 42
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object p1, v1

    goto :goto_5

    :catch_2
    move-exception p0

    move-object p1, v1

    .line 32
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 36
    :try_start_4
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V

    :cond_2
    if-eqz p1, :cond_3

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_4
    return-object p1

    :catchall_1
    move-exception p0

    :goto_5
    if-eqz v1, :cond_4

    .line 36
    :try_start_5
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V

    goto :goto_6

    :catch_3
    move-exception p1

    goto :goto_7

    :cond_4
    :goto_6
    if-eqz p1, :cond_5

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    .line 42
    :goto_7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 44
    :cond_5
    :goto_8
    throw p0
.end method
