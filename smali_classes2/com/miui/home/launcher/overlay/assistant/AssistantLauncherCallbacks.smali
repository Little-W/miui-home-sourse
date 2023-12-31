.class public Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;
.super Ljava/lang/Object;
.source "AssistantLauncherCallbacks.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;
    }
.end annotation


# instance fields
.field private mAssistantOpenObserver:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private registerObserver()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mAssistantOpenObserver:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;)V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mAssistantOpenObserver:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "open_personal_assistant"

    .line 169
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mAssistantOpenObserver:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

    .line 168
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mAssistantOpenObserver:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mAssistantOpenObserver:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mAssistantOpenObserver:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherAssistantCompat;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->newInstance(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherAssistantCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 39
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->registerObserver()V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onDarkModeChanged()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onDestroy()V

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->unregisterObserver()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onDragToAssistantScreen(Landroid/view/MotionEvent;)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onDragToAssistantScreen(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onHandleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onHomeGestureStart()V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onHomeGestureStart()V

    :cond_0
    return-void
.end method

.method public onHomeIntent(Landroid/content/Intent;)Z
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onHomeIntent(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onHomeIntentAfterFilter(Landroid/content/Intent;)Z
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onHomeIntentAfterFilter(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onStart()V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onStateChanged(Lcom/miui/home/launcher/LauncherState;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onStop()V

    :cond_0
    return-void
.end method
