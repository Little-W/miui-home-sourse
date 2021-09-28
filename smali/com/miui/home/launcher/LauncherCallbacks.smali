.class public interface abstract Lcom/miui/home/launcher/LauncherCallbacks;
.super Ljava/lang/Object;
.source "LauncherCallbacks.java"


# virtual methods
.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract onAttachedToWindow()V
.end method

.method public abstract onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
.end method

.method public abstract onDarkModeChanged()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDetachedFromWindow()V
.end method

.method public onDragToAssistantScreen(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract onHomeGestureStart()V
.end method

.method public abstract onHomeIntent(Landroid/content/Intent;)Z
.end method

.method public abstract onHomeIntentAfterFilter(Landroid/content/Intent;)Z
.end method

.method public abstract onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V
.end method

.method public abstract onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public onStateChanged(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    return-void
.end method

.method public abstract onStop()V
.end method
