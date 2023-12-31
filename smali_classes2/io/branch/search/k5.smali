.class public final Lio/branch/search/k5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/x4;


# static fields
.field public static final a:Lio/branch/search/k5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/k5;

    invoke-direct {v0}, Lio/branch/search/k5;-><init>()V

    sput-object v0, Lio/branch/search/k5;->a:Lio/branch/search/k5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BI)V
    .locals 4

    array-length p0, p1

    if-ltz p0, :cond_2

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p2, 0x1

    rem-int v1, v0, v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int v1, v0, p2

    array-length v2, p1

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-byte v2, p1, v0

    aget-byte v3, p1, v1

    aput-byte v3, p1, v0

    aput-byte v2, p1, v1

    :goto_1
    if-eq v0, p0, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Ljava/io/InputStream;)[B
    .locals 2

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/branch/search/k5;->a([BI)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lio/branch/search/k5;->a([BI)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/branch/search/k5;->a([BI)V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/branch/search/k5;->a([BI)V

    return-object p1
.end method
