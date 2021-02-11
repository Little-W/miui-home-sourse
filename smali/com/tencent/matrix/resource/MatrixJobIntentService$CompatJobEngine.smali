.class interface abstract Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatJobEngine;
.super Ljava/lang/Object;
.source "MatrixJobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/resource/MatrixJobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CompatJobEngine"
.end annotation


# virtual methods
.method public abstract compatGetBinder()Landroid/os/IBinder;
.end method

.method public abstract dequeueWork()Lcom/tencent/matrix/resource/MatrixJobIntentService$GenericWorkItem;
.end method
