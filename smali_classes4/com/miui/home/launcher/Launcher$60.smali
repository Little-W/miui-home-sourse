.class Lcom/miui/home/launcher/Launcher$60;
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

    .line 6974
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$60;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$60;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$60;->val$detail:Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 6976
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$60;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$60;->val$intent:Landroid/content/Intent;

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/LauncherModel;->getShortcutInfo(Landroid/content/Intent;Lcom/miui/home/launcher/CellLayout$CellInfo;I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeepShortcutInfo;

    if-eqz v0, :cond_0

    .line 6978
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$60;->val$detail:Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-virtual {v1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeepShortcutInfo;->setIconPackage(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6979
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$60;->val$detail:Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-virtual {v3}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$60;->val$detail:Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-virtual {v3}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$60;->val$detail:Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-virtual {v3}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "checkUserDeepShortcuts, add deepShortcut(%s, %s, %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6980
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$60;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DeepShortcutInfo;->addToLauncher(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method
