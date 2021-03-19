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

.field final synthetic val$status:[I

.field final synthetic val$titles:[Ljava/lang/String;

.field final synthetic val$uris:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;[ILjava/util/List;)V
    .locals 0

    .line 1444
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$endWaiting:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$cloudBackupPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$packageNames:Ljava/util/List;

    iput-object p5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$titles:[Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$status:[I

    iput-object p7, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$uris:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1447
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$endWaiting:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1448
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$cloudBackupPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1451
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$packageNames:Ljava/util/List;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 1452
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$titles:[Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$status:[I

    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$uris:Ljava/util/List;

    new-array v2, v2, [Ljava/lang/String;

    .line 1453
    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;->val$cloudBackupPackageName:Ljava/lang/String;

    move-object v2, v0

    .line 1452
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/progress/ProgressManager;->updateProgress([Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
