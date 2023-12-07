.class Lmiuix/core/util/IOUtils$1;
.super Lmiuix/core/util/Pools$Manager;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/core/util/Pools$Manager<",
        "Ljava/io/ByteArrayOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lmiuix/core/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance()Ljava/io/ByteArrayOutputStream;
    .locals 0

    .line 45
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0}, Lmiuix/core/util/IOUtils$1;->createInstance()Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public onRelease(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 50
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Lmiuix/core/util/IOUtils$1;->onRelease(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
