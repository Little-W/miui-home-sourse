.class public abstract Lcom/miui/maml/MamlDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "MamlDisplayEventReceiver.java"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public abstract onVsync(J)V
.end method

.method public onVsync(JII)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/MamlDisplayEventReceiver;->onVsync(J)V

    return-void
.end method

.method public onVsync(JJI)V
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/MamlDisplayEventReceiver;->onVsync(J)V

    return-void
.end method

.method public onVsync(JJILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/MamlDisplayEventReceiver;->onVsync(J)V

    return-void
.end method
