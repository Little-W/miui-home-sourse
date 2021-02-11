.class Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver$1;
.super Ljava/lang/Object;
.source "UninstallController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->onPackageDeleted(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver$1;->this$1:Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver$1;->this$1:Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;

    iget-object v0, v0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    invoke-static {v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->access$000(Lcom/miui/home/launcher/uninstall/UninstallController;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const v1, 0x7f100104

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    return-void
.end method
