.class Lcom/miui/home/library/utils/DeferredHandler$IdleRunnable;
.super Ljava/lang/Object;
.source "DeferredHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunnable"
.end annotation


# instance fields
.field mRunnable:Ljava/lang/Runnable;


# virtual methods
.method public run()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/miui/home/library/utils/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
