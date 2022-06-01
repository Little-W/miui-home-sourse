.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field final synthetic val$cloudBackupPackageName:Ljava/lang/String;

.field final synthetic val$endWaiting:Ljava/lang/Runnable;

.field final synthetic val$packageNames:Ljava/util/List;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$uris:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1533
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$endWaiting:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$cloudBackupPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$packageNames:Ljava/util/List;

    iput-object p5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$uris:Ljava/util/List;

    iput-object p6, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1536
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$endWaiting:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1537
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$cloudBackupPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$packageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1541
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1543
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$packageNames:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1544
    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$uris:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1545
    new-instance v6, Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    iget-object v7, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$cloudBackupPackageName:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-direct {v6, v4, v7, v8}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1546
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$title:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setTitle(Ljava/lang/String;)V

    .line 1547
    invoke-virtual {v6, v5}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setIconUri(Landroid/net/Uri;)V

    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 1548
    :goto_1
    invoke-virtual {v1, v6, v4}, Lcom/miui/home/launcher/progress/ProgressManager;->updateProgress(Lcom/miui/home/launcher/progress/ProgressUpdateParams;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
