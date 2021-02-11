.class public final Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# direct methods
.method public static readBEInt(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 81
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 82
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    or-int v3, v0, v1

    or-int/2addr v3, v2

    or-int/2addr v3, p0

    if-ltz v3, :cond_0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    return v0

    .line 84
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readBELong(Ljava/io/InputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 91
    new-array v1, v0, [B

    const/4 v2, 0x0

    const-wide/16 v3, 0x8

    .line 92
    invoke-static {p0, v1, v2, v3, v4}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readFully(Ljava/io/InputStream;[BIJ)V

    .line 93
    aget-byte p0, v1, v2

    int-to-long v2, p0

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    const/4 p0, 0x1

    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v4, p0

    const/16 p0, 0x30

    shl-long/2addr v4, p0

    add-long/2addr v2, v4

    const/4 p0, 0x2

    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v4, p0

    const/16 p0, 0x28

    shl-long/2addr v4, p0

    add-long/2addr v2, v4

    const/4 p0, 0x3

    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v4, p0

    const/16 p0, 0x20

    shl-long/2addr v4, p0

    add-long/2addr v2, v4

    const/4 p0, 0x4

    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v4, p0

    const/16 p0, 0x18

    shl-long/2addr v4, p0

    add-long/2addr v2, v4

    const/4 p0, 0x5

    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    int-to-long v4, p0

    add-long/2addr v2, v4

    const/4 p0, 0x6

    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v0

    int-to-long v4, p0

    add-long/2addr v2, v4

    const/4 p0, 0x7

    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v0, p0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static readBEShort(Ljava/io/InputStream;)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 71
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    or-int v1, v0, p0

    if-ltz v1, :cond_0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    .line 73
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readFully(Ljava/io/InputStream;[BIJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    :goto_0
    int-to-long v0, p2

    cmp-long v2, v0, p3

    if-gez v2, :cond_1

    sub-long v0, p3, v0

    long-to-int v0, v0

    .line 106
    invoke-virtual {p0, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/2addr p2, v0

    goto :goto_0

    .line 108
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public static readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    new-array v0, p1, [B

    int-to-long v1, p1

    const/4 p1, 0x0

    .line 130
    invoke-static {p0, v0, p1, v1, v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readFully(Ljava/io/InputStream;[BIJ)V

    .line 131
    new-instance p0, Lcom/tencent/matrix/resource/hproflib/model/ID;

    invoke-direct {p0, v0}, Lcom/tencent/matrix/resource/hproflib/model/ID;-><init>([B)V

    return-object p0
.end method

.method public static readNullTerminatedString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eqz v1, :cond_0

    int-to-char v1, v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readString(Ljava/io/InputStream;J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    .line 123
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 124
    invoke-static {p0, v0, v1, p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readFully(Ljava/io/InputStream;[BIJ)V

    .line 125
    new-instance p0, Ljava/lang/String;

    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static readValue(Ljava/io/InputStream;Lcom/tencent/matrix/resource/hproflib/model/Type;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil$1;->$SwitchMap$com$tencent$matrix$resource$hproflib$model$Type:[I

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/model/Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 153
    :pswitch_0
    invoke-static {p0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBELong(Ljava/io/InputStream;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 151
    :pswitch_1
    invoke-static {p0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 149
    :pswitch_2
    invoke-static {p0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEShort(Ljava/io/InputStream;)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 147
    :pswitch_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 145
    :pswitch_4
    invoke-static {p0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBELong(Ljava/io/InputStream;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 143
    :pswitch_5
    invoke-static {p0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 141
    :pswitch_6
    invoke-static {p0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEShort(Ljava/io/InputStream;)S

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 139
    :pswitch_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 137
    :pswitch_8
    invoke-static {p0, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static skip(Ljava/io/InputStream;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    cmp-long v4, v2, p1

    if-gez v4, :cond_1

    sub-long v4, p1, v2

    .line 162
    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    add-long/2addr v2, v4

    goto :goto_0

    .line 164
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public static skip(Ljava/io/OutputStream;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 269
    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    int-to-long v3, v2

    const/16 v5, 0xc

    shr-long v5, p1, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 271
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0xfff

    and-long/2addr p1, v2

    long-to-int p1, p1

    .line 273
    invoke-virtual {p0, v0, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public static skipValue(Ljava/io/InputStream;Lcom/tencent/matrix/resource/hproflib/model/Type;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-virtual {p1, p2}, Lcom/tencent/matrix/resource/hproflib/model/Type;->getSize(I)I

    move-result p1

    int-to-long v0, p1

    .line 172
    invoke-static {p0, v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->skip(Ljava/io/InputStream;J)V

    return p1
.end method

.method public static writeBEInt(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 208
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 209
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 210
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    .line 211
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeBELong(Ljava/io/OutputStream;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 216
    new-array v1, v0, [B

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x30

    ushr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/16 v2, 0x28

    ushr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    const/16 v2, 0x20

    ushr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    const/16 v2, 0x18

    ushr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x4

    aput-byte v2, v1, v4

    const/16 v2, 0x10

    ushr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x5

    aput-byte v2, v1, v4

    ushr-long v4, p1, v0

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x6

    aput-byte v2, v1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v1, p2

    .line 225
    invoke-virtual {p0, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public static writeBEShort(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 203
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    .line 204
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeID(Ljava/io/OutputStream;Lcom/tencent/matrix/resource/hproflib/model/ID;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeNullTerminatedString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 234
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    const/4 p1, 0x0

    .line 235
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "UTF-8"

    .line 230
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public static writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_11

    .line 245
    instance-of v0, p1, Lcom/tencent/matrix/resource/hproflib/model/ID;

    if-eqz v0, :cond_0

    .line 246
    check-cast p1, Lcom/tencent/matrix/resource/hproflib/model/ID;

    invoke-static {p0, p1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeID(Ljava/io/OutputStream;Lcom/tencent/matrix/resource/hproflib/model/ID;)V

    goto/16 :goto_8

    .line 247
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_10

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_7

    .line 249
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_f

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 251
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_e

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    .line 253
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_d

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 255
    :cond_4
    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_c

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_3

    .line 257
    :cond_5
    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_b

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 259
    :cond_6
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_a

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 261
    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_9

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 264
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad value type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 262
    :cond_9
    :goto_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBELong(Ljava/io/OutputStream;J)V

    goto :goto_8

    .line 260
    :cond_a
    :goto_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    goto :goto_8

    .line 258
    :cond_b
    :goto_2
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-static {p0, p1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEShort(Ljava/io/OutputStream;I)V

    goto :goto_8

    .line 256
    :cond_c
    :goto_3
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_8

    .line 254
    :cond_d
    :goto_4
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBELong(Ljava/io/OutputStream;J)V

    goto :goto_8

    .line 252
    :cond_e
    :goto_5
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-static {p0, p1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    goto :goto_8

    .line 250
    :cond_f
    :goto_6
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p0, p1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEShort(Ljava/io/OutputStream;I)V

    goto :goto_8

    .line 248
    :cond_10
    :goto_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_8
    return-void

    .line 244
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "value is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
