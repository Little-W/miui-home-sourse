.class public interface abstract Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;
.super Ljava/lang/Object;
.source "SwipeHelperForRecents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/SwipeHelperForRecents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract canChildBeDismissed(Landroid/view/View;)Z
.end method

.method public abstract checkToBeginDrag(Landroid/view/View;)Z
.end method

.method public abstract getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
.end method

.method public abstract getFalsingThresholdFactor()F
.end method

.method public abstract isAntiFalsingNeeded()Z
.end method

.method public abstract onBeginDrag(Landroid/view/View;)V
.end method

.method public abstract onChildDismissedEnd(Landroid/view/View;)V
.end method

.method public abstract onChildDismissedStart()V
.end method

.method public abstract onChildSnappedBack(Landroid/view/View;F)V
.end method

.method public abstract onDragCancelled(Landroid/view/View;)V
.end method

.method public abstract onDragEnd(Landroid/view/View;)V
.end method

.method public abstract updateSwipeProgress(Landroid/view/View;F)Z
.end method
