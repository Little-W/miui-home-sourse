.class public Lcom/android/systemui/shared/recents/system/InputChannelCompat;
.super Ljava/lang/Object;
.source "InputChannelCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;,
        Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventReceiver;,
        Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventListener;)Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventReceiver;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/view/InputChannel;

    .line 50
    new-instance p1, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventReceiver;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventListener;)V

    return-object p1
.end method

.method public static mergeMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->addBatch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
