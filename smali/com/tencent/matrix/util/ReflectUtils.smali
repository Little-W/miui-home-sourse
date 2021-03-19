.class public Lcom/tencent/matrix/util/ReflectUtils;
.super Ljava/lang/Object;
.source "ReflectUtils.java"


# direct methods
.method public static get(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/tencent/matrix/util/ReflectFiled;

    invoke-direct {v0, p0, p1}, Lcom/tencent/matrix/util/ReflectFiled;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/tencent/matrix/util/ReflectFiled;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
