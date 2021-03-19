.class public abstract Lcom/miui/home/launcher/monitor/LooperObserver;
.super Ljava/lang/Object;
.source "LooperObserver.java"


# instance fields
.field private isDispatchBegin:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/miui/home/launcher/monitor/LooperObserver;->isDispatchBegin:Z

    return-void
.end method


# virtual methods
.method public dispatchBegin(JJJ)V
    .locals 0

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/miui/home/launcher/monitor/LooperObserver;->isDispatchBegin:Z

    return-void
.end method

.method public dispatchEnd(JJJJJZ)V
    .locals 0

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/miui/home/launcher/monitor/LooperObserver;->isDispatchBegin:Z

    return-void
.end method

.method public doFrame(Ljava/lang/String;JJJJJJ)V
    .locals 0

    return-void
.end method

.method public isDispatchBegin()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/miui/home/launcher/monitor/LooperObserver;->isDispatchBegin:Z

    return v0
.end method
