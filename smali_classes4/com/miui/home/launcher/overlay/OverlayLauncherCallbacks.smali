.class public abstract Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;
.super Ljava/lang/Object;
.source "OverlayLauncherCallbacks.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherCallbacks;


# instance fields
.field protected mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public abstract createLauncherClient(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient;
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/overlay/client/LauncherClient;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->createLauncherClient(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onHomeGestureStart()V
    .locals 0

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->getServerVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 101
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {p0, p1, p2}, Lcom/miui/launcher/overlay/client/LauncherClient;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onStop()V

    :cond_0
    return-void
.end method
