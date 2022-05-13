.class Lcom/miui/home/launcher/Launcher$58;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->checkDeepShortcuts(Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$detail:Lcom/miui/launcher/common/ShortcutInfoCompat;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Lcom/miui/launcher/common/ShortcutInfoCompat;)V
    .locals 0

    .line 6504
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$58;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$58;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$58;->val$detail:Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 6506
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$58;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$58;->val$intent:Landroid/content/Intent;

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/LauncherModel;->getShortcutInfo(Landroid/content/Intent;Lcom/miui/home/launcher/CellLayout$CellInfo;I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeepShortcutInfo;

    if-eqz v0, :cond_0

    .line 6508
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$58;->val$detail:Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-virtual {v1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeepShortcutInfo;->setIconPackage(Ljava/lang/String;)V

    const-string v1, "Launcher"

    const-string v2, "checkUserDeepShortcuts, add deepShortcut(%s, %s, %s)"

    const/4 v3, 0x3

    .line 6509
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher$58;->val$detail:Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-virtual {v5}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher$58;->val$detail:Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-virtual {v5}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher$58;->val$detail:Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-virtual {v5}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6510
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$58;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeepShortcutInfo;->addToLauncher(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method
