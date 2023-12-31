.class public Lcom/miui/launcher/overlay/client/HighPriorityServiceConnectionStrategy;
.super Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;
.source "HighPriorityServiceConnectionStrategy.java"


# instance fields
.field private final mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/miui/launcher/overlay/client/LauncherClientService;->getService(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/launcher/overlay/client/LauncherClientService;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/launcher/overlay/client/HighPriorityServiceConnectionStrategy;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    return-void
.end method


# virtual methods
.method public bindClient(Lcom/miui/launcher/overlay/client/LauncherClient;)Lcom/miui/launcher/overlay/ILauncherOverlay;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/HighPriorityServiceConnectionStrategy;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClientService;->bindClient(Lcom/miui/launcher/overlay/client/LauncherClient;)Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    return-object p0
.end method

.method public connect(Z)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/HighPriorityServiceConnectionStrategy;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/HighPriorityServiceConnectionStrategy;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->disconnect()V

    return-void
.end method

.method public hideOverlay()V
    .locals 0

    return-void
.end method

.method public onDestroy(Lcom/miui/launcher/overlay/client/LauncherClient;Z)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/HighPriorityServiceConnectionStrategy;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    invoke-virtual {p0, p1, p2}, Lcom/miui/launcher/overlay/client/LauncherClientService;->unbindClient(Lcom/miui/launcher/overlay/client/LauncherClient;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 31
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/HighPriorityServiceConnectionStrategy;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->setStopped(Z)V

    return-void
.end method

.method onStop()V
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/HighPriorityServiceConnectionStrategy;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->setStopped(Z)V

    return-void
.end method

.method public showOverlay()V
    .locals 0

    return-void
.end method
