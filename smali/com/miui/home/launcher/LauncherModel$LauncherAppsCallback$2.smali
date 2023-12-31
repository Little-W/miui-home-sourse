.class Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$2;->this$1:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$2;->val$user:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$2;->val$packageName:Ljava/lang/String;

    const-string v2, "android.intent.extra.PACKAGES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$2;->val$packageName:Ljava/lang/String;

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 394
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$2;->this$1:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    iget-object v1, v1, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$2;->this$1:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    iget-object v2, v2, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$2;->val$user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0, p0}, Lcom/miui/home/launcher/LauncherModel;->onReceiveBackground(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
