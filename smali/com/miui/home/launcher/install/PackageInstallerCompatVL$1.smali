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
.method constructor <init>(Lcom/miui/home/launcher/install/PackageInstallerCompatVL;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->this$0:Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

    iput-object p2, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$title:Ljava/lang/String;

    iput p4, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v0, [Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$title:Ljava/lang/String;

    aput-object v5, v3, v4

    new-array v5, v0, [I

    iget v6, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$status:I

    aput v6, v5, v4

    new-array v0, v0, [Ljava/lang/String;

    sget-object v6, Lcom/miui/home/launcher/install/PlayAutoInstallHelper;->DEFAULT_ICON:Ljava/lang/String;

    aput-object v6, v0, v4

    const-string v6, "com.android.vending"

    move-object v4, v5

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/progress/ProgressManager;->updateProgress([Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->this$0:Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

    invoke-static {v0}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;->access$000(Lcom/miui/home/launcher/install/PackageInstallerCompatVL;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/home/launcher/install/PackageInstallerCompatVL$1;->val$status:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->updateWidgetProgress(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
