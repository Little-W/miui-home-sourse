.class public Lcom/miui/home/launcher/aop/LogHooker;
.super Ljava/lang/Object;
.source "LogHooker.java"


# direct methods
.method public static useFileLogger()Z
    .locals 1

    .line 19
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
