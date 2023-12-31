.class public interface abstract Lcom/xiaomi/dist/utils/Schedulers$MasterThread;
.super Ljava/lang/Object;
.source "Schedulers.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/utils/Schedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MasterThread"
.end annotation


# virtual methods
.method public abstract asExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract asHandler()Landroid/os/Handler;
.end method

.method public abstract close()V
.end method
