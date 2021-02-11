.class public Lcom/market/sdk/Patcher;
.super Ljava/lang/Object;
.source "Patcher.java"


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "sdk_patcher_jni"

.field private static final TAG:Ljava/lang/String; = "MarketPatcher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static patch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 43
    new-instance v0, Lcom/market/sdk/Patcher;

    invoke-direct {v0}, Lcom/market/sdk/Patcher;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/market/sdk/Patcher;->applyPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static tryLoadLibrary()Z
    .locals 4

    :try_start_0
    const-string v0, "sdk_patcher_jni"

    .line 34
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MarketPatcher"

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load patcher library failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public native applyPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
