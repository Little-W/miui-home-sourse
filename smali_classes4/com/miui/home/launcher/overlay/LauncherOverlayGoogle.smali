.class public Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;
.super Ljava/lang/Object;
.source "LauncherOverlayGoogle.java"

# interfaces
.implements Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;
.implements Lcom/miui/home/launcher/overlay/LauncherOverlay;


# instance fields
.field private mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

.field private mWasOverlayAttached:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->mWasOverlayAttached:Z

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public getServerVersion()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hideOverlay(Z)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(Z)V

    return-void
.end method

.method public isGoogleOverlay()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onGoogleOverlayIconChanged(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onGoogleOverlayTransitionComplete()V
    .locals 0

    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

    if-eqz p0, :cond_0

    .line 44
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;->onScrollChanged(F)V

    :cond_0
    return-void
.end method

.method public onScrollChange(FZ)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->updateMove(F)V

    return-void
.end method

.method public onScrollInteractionBegin()V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->startMove()V

    return-void
.end method

.method public onScrollInteractionEnd()V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->endMove()V

    return-void
.end method

.method public onServiceStateChanged(ZZ)V
    .locals 0

    .line 35
    iget-boolean p2, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->mWasOverlayAttached:Z

    if-eq p1, p2, :cond_1

    .line 36
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->mWasOverlayAttached:Z

    .line 37
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/Launcher;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    :cond_1
    return-void
.end method

.method public onSharedOverlaySwitchInitiated()V
    .locals 0

    return-void
.end method

.method public setAlphaAndScale(FF)V
    .locals 0

    return-void
.end method

.method public setClient(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    return-void
.end method

.method public setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

    return-void
.end method

.method public showOverlay(Z)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->showOverlay(Z)V

    return-void
.end method
