.class public Lcom/miui/home/library/utils/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/utils/ReflectionUtils$ObjectReference;
    }
.end annotation


# direct methods
.method public static varargs tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/home/library/utils/ReflectionUtils$ObjectReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/miui/home/library/utils/ReflectionUtils$ObjectReference<",
            "TT;>;"
        }
    .end annotation

    .line 13
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
