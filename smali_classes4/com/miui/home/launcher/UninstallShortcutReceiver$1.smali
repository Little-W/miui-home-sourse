.class Lcom/miui/home/launcher/UninstallShortcutReceiver$1;
.super Ljava/lang/Object;
.source "UninstallShortcutReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/UninstallShortcutReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/UninstallShortcutReceiver;

.field final synthetic val$app:Lcom/miui/home/launcher/Application;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/UninstallShortcutReceiver;Lcom/miui/home/launcher/Application;Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->this$0:Lcom/miui/home/launcher/UninstallShortcutReceiver;

    iput-object p2, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$app:Lcom/miui/home/launcher/Application;

    iput-object p3, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p4, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    iput-object p5, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$app:Lcom/miui/home/launcher/Application;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v1, "shortcut_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 60
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_2

    .line 61
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    .line 60
    invoke-virtual {v2, v1, p0, v0}, Lcom/miui/home/launcher/Launcher;->removeDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/home/launcher/UninstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/Launcher;->uninstallShortcut(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method
