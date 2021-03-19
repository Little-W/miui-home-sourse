.class final Lcom/miui/home/launcher/uninstall/UninstallController$6;
.super Ljava/lang/Object;
.source "UninstallController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/UninstallController;->deleteWithBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$shortcutInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$6;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallController$6;->val$shortcutInfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$6;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$6;->val$shortcutInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItems(Ljava/util/List;)V

    return-void
.end method
