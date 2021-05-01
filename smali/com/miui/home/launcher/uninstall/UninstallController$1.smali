.class Lcom/miui/home/launcher/uninstall/UninstallController$1;
.super Ljava/lang/Object;
.source "UninstallController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/UninstallController;->hideAppWidthDialog(Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/List<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$1;->this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallController$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$accept$159(Lcom/miui/home/launcher/uninstall/UninstallController$1;Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$1;->this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->hideApps(Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$1;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$1;->this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    invoke-static {v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->access$000(Lcom/miui/home/launcher/uninstall/UninstallController;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    new-instance v2, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$1$ivdY-onHq9hTbrZITCpc7Q0adGI;

    invoke-direct {v2, p0, p1, v1}, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$1$ivdY-onHq9hTbrZITCpc7Q0adGI;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController$1;Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0, p1, v2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->doBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
