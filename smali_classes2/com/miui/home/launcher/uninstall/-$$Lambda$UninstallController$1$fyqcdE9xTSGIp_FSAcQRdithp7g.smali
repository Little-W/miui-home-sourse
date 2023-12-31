.class public final synthetic Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$1$fyqcdE9xTSGIp_FSAcQRdithp7g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/uninstall/UninstallController$1;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/uninstall/UninstallController$1;Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$1$fyqcdE9xTSGIp_FSAcQRdithp7g;->f$0:Lcom/miui/home/launcher/uninstall/UninstallController$1;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$1$fyqcdE9xTSGIp_FSAcQRdithp7g;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$1$fyqcdE9xTSGIp_FSAcQRdithp7g;->f$2:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$1$fyqcdE9xTSGIp_FSAcQRdithp7g;->f$0:Lcom/miui/home/launcher/uninstall/UninstallController$1;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$1$fyqcdE9xTSGIp_FSAcQRdithp7g;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$1$fyqcdE9xTSGIp_FSAcQRdithp7g;->f$2:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController$1;->lambda$accept$0$UninstallController$1(Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
