.class public abstract Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;
.super Ljava/lang/Object;
.source "ServiceConnectionStrategy.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract bindClient(Lcom/miui/launcher/overlay/client/LauncherClient;)Lcom/miui/launcher/overlay/ILauncherOverlay;
.end method

.method abstract connect(Z)V
.end method

.method abstract disconnect()V
.end method

.method abstract hideOverlay()V
.end method

.method abstract onDestroy(Lcom/miui/launcher/overlay/client/LauncherClient;Z)V
.end method

.method abstract onStart()V
.end method

.method abstract onStop()V
.end method

.method abstract showOverlay()V
.end method
