.class public Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;
.super Ljava/lang/Object;
.source "LauncherOverlayConnectionCompat.java"


# instance fields
.field private final mLauncherOverlayConnectionCompat:Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 19
    new-instance p3, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;

    invoke-direct {p3, p1, p2}, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->mLauncherOverlayConnectionCompat:Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;

    goto :goto_0

    .line 21
    :cond_0
    new-instance p3, Lcom/miui/launcher/overlay/client/HighPriorityServiceConnectionStrategy;

    invoke-direct {p3, p1, p2}, Lcom/miui/launcher/overlay/client/HighPriorityServiceConnectionStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->mLauncherOverlayConnectionCompat:Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;

    :goto_0
    return-void
.end method


# virtual methods
.method public bindClient(Lcom/miui/launcher/overlay/client/LauncherClient;)Lcom/miui/launcher/overlay/ILauncherOverlay;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->mLauncherOverlayConnectionCompat:Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;

    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;->bindClient(Lcom/miui/launcher/overlay/client/LauncherClient;)Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    return-object p0
.end method

.method public connect(Z)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->mLauncherOverlayConnectionCompat:Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;

    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;->connect(Z)V

    return-void
.end method

.method public disconnect()V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->mLauncherOverlayConnectionCompat:Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;->disconnect()V

    return-void
.end method

.method public hideOverlay()V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->mLauncherOverlayConnectionCompat:Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;->hideOverlay()V

    return-void
.end method

.method public onDestroy(Lcom/miui/launcher/overlay/client/LauncherClient;Z)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->mLauncherOverlayConnectionCompat:Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;

    invoke-virtual {p0, p1, p2}, Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;->onDestroy(Lcom/miui/launcher/overlay/client/LauncherClient;Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->mLauncherOverlayConnectionCompat:Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->mLauncherOverlayConnectionCompat:Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;->onStop()V

    return-void
.end method

.method public showOverlay()V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->mLauncherOverlayConnectionCompat:Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;->showOverlay()V

    return-void
.end method
