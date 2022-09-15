.class Lcom/miui/home/launcher/uninstall/UninstallController$5;
.super Ljava/lang/Object;
.source "UninstallController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/UninstallController;->showDialog(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
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
.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$accept$0(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    .line 272
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->uninstallApps(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$5;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    new-instance v1, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$5$qvJfATj3GipxYehUbebnkYb77IM;

    invoke-direct {v1, v0, p1}, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$5$qvJfATj3GipxYehUbebnkYb77IM;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    invoke-static {v0, p1, v1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->doBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
