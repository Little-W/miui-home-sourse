.class Lcom/miui/launcher/overlay/client/PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/launcher/overlay/client/PackageReceiver$_lancet;
    }
.end annotation


# instance fields
.field private final mClient:Lcom/miui/launcher/overlay/client/LauncherClient;


# direct methods
.method public constructor <init>(Lcom/miui/launcher/overlay/client/LauncherClient;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/PackageReceiver;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/launcher/overlay/client/PackageReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/overlay/client/PackageReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/PackageReceiver;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->onOverlayUpdate(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/launcher/overlay/client/PackageReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/launcher/overlay/client/PackageReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
