.class Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;
.super Ljava/lang/Object;
.source "PackageInstallerCompatVL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->sendUpdate(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$status:I

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/install/PackageInstallerCompatVL;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->this$0:Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

    iput-object p2, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$status:I

    iput-object p4, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 86
    new-instance v0, Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    iget-object v1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$packageName:Ljava/lang/String;

    const-string v2, "com.android.vending"

    iget v3, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$status:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    iget-object v1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setTitle(Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcom/miui/home/launcher/install/PlayAutoInstallHelper;->DEFAULT_ICON:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setIconUri(Landroid/net/Uri;)V

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/progress/ProgressManager;->updateProgress(Lcom/miui/home/launcher/progress/ProgressUpdateParams;Z)V

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->this$0:Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

    invoke-static {v1}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->access$000(Lcom/miui/home/launcher/install/PackageInstallerCompatVL;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$status:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/home/launcher/Launcher;->updateWidgetProgress(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
