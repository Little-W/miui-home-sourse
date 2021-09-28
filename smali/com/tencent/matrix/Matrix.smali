.class public Lcom/tencent/matrix/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# static fields
.field private static volatile sInstance:Lcom/tencent/matrix/Matrix;


# instance fields
.field private final plugins:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/tencent/matrix/plugin/Plugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static with()Lcom/tencent/matrix/Matrix;
    .locals 2

    .line 77
    sget-object v0, Lcom/tencent/matrix/Matrix;->sInstance:Lcom/tencent/matrix/Matrix;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/tencent/matrix/Matrix;->sInstance:Lcom/tencent/matrix/Matrix;

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "you must init Matrix sdk first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPluginByClass(Ljava/lang/Class;)Lcom/tencent/matrix/plugin/Plugin;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/matrix/plugin/Plugin;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/tencent/matrix/Matrix;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/matrix/plugin/Plugin;

    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
