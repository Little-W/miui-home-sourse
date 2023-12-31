.class public interface abstract Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;
.super Ljava/lang/Object;
.source "ExecutorHelper.java"

# interfaces
.implements Lcom/xiaomi/dist/utils/ExecutorHelper$Timeout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/utils/ExecutorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaomi/dist/utils/ExecutorHelper$Timeout;"
    }
.end annotation


# virtual methods
.method public abstract onRun(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
