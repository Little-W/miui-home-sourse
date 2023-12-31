.class final Lcom/miui/home/launcher/HideAppList$onPackageChanged$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "HideAppList.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/HideAppList;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/miui/home/launcher/LauncherModel;

.field final synthetic $packageName$inlined:Ljava/lang/String;

.field final synthetic $user$inlined:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/HideAppList$onPackageChanged$$inlined$let$lambda$1;->$it:Lcom/miui/home/launcher/LauncherModel;

    iput-object p2, p0, Lcom/miui/home/launcher/HideAppList$onPackageChanged$$inlined$let$lambda$1;->$packageName$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/HideAppList$onPackageChanged$$inlined$let$lambda$1;->$user$inlined:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/miui/home/launcher/HideAppList$onPackageChanged$$inlined$let$lambda$1;->$packageName$inlined:Ljava/lang/String;

    const-string v2, "android.intent.extra.PACKAGES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/miui/home/launcher/HideAppList$onPackageChanged$$inlined$let$lambda$1;->$packageName$inlined:Ljava/lang/String;

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/miui/home/launcher/HideAppList$onPackageChanged$$inlined$let$lambda$1;->$it:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/home/launcher/HideAppList$onPackageChanged$$inlined$let$lambda$1;->$user$inlined:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0, p0}, Lcom/miui/home/launcher/LauncherModel;->onReceiveBackground(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
