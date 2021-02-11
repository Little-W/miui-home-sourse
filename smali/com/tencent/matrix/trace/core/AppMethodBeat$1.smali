.class final Lcom/tencent/matrix/trace/core/AppMethodBeat$1;
.super Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;
.source "AppMethodBeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/trace/core/AppMethodBeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchEnd()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->dispatchEnd()V

    .line 70
    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->access$200()V

    return-void
.end method

.method public dispatchStart()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->dispatchStart()V

    .line 64
    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->access$100()V

    return-void
.end method

.method public isValid()Z
    .locals 2

    .line 58
    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->access$000()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
