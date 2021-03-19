.class public abstract Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;
.super Ljava/lang/Object;
.source "LooperMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/trace/core/LooperMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LooperDispatchListener"
.end annotation


# instance fields
.field isHasDispatchStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->isHasDispatchStart:Z

    return-void
.end method


# virtual methods
.method public dispatchEnd()V
    .locals 0

    return-void
.end method

.method public dispatchStart()V
    .locals 0

    return-void
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDispatchEnd(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->isHasDispatchStart:Z

    .line 48
    invoke-virtual {p0}, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->dispatchEnd()V

    return-void
.end method

.method public onDispatchStart(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->isHasDispatchStart:Z

    .line 42
    invoke-virtual {p0}, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->dispatchStart()V

    return-void
.end method
