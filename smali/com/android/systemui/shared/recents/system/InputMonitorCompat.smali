.class public Lcom/android/systemui/shared/recents/system/InputMonitorCompat;
.super Ljava/lang/Object;
.source "InputMonitorCompat.java"


# instance fields
.field private final mInputMonitor:Landroid/view/InputMonitor;


# direct methods
.method private constructor <init>(Landroid/view/InputMonitor;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/systemui/shared/recents/system/InputMonitorCompat;
    .locals 1

    .line 67
    new-instance v0, Lcom/android/systemui/shared/recents/system/InputMonitorCompat;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/view/InputMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/InputMonitorCompat;-><init>(Landroid/view/InputMonitor;)V

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-static {p0}, Lmiui/view/InputMonitorExpose;->box(Ljava/lang/Object;)Lmiui/view/InputMonitorExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/view/InputMonitorExpose;->dispose()V

    return-void
.end method

.method public getInputReceiver(Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventListener;)Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventReceiver;
    .locals 1

    .line 59
    new-instance v0, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventReceiver;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-static {p0}, Lmiui/view/InputMonitorExpose;->box(Ljava/lang/Object;)Lmiui/view/InputMonitorExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/view/InputMonitorExpose;->getInputChannel()Lmiui/view/InputChannelExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/view/InputChannelExpose;->unbox()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/InputChannel;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventListener;)V

    return-object v0
.end method

.method public pilferPointers()V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-static {p0}, Lmiui/view/InputMonitorExpose;->box(Ljava/lang/Object;)Lmiui/view/InputMonitorExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/view/InputMonitorExpose;->pilferPointers()V

    return-void
.end method
