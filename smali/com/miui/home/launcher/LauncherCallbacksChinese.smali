.class Lcom/miui/home/launcher/LauncherCallbacksChinese;
.super Ljava/lang/Object;
.source "LauncherCallbacksChinese.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherCallbacks;


# instance fields
.field private final mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

.field private final mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    .line 20
    new-instance v0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onAttachedToWindow()V

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onAttachedToWindow()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDarkModeChanged()V

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDarkModeChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDestroy()V

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDestroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDetachedFromWindow()V

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDetachedFromWindow()V

    return-void
.end method

.method public onHomeGestureStart()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeGestureStart()V

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeGestureStart()V

    return-void
.end method

.method public onHomeIntent(Landroid/content/Intent;)Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onHomeIntentAfterFilter(Landroid/content/Intent;)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntentAfterFilter(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntentAfterFilter(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onPause()V

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onResume()V

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onStart()V

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onStop()V

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onStop()V

    return-void
.end method
