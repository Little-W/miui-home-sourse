.class Lcom/miui/home/launcher/uninstall/UninstallController$2;
.super Ljava/lang/Object;
.source "UninstallController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/UninstallController;->hideApp(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$2;->this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallController$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/launcher/uninstall/UninstallController$2;->val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$2;->val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/UninstallController$2;->val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/UninstallController$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    .line 160
    invoke-static {v3}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/uninstall/UninstallController$2;->val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 159
    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/LauncherHideApp;->addHideApp(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$2;->this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$2;->val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/uninstall/UninstallController;->access$100(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$2;->val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherHideApp;->closeHiddenAppNotifications(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
