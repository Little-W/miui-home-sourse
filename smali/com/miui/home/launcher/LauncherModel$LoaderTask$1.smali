.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindMissingIcons(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V
    .locals 0

    .line 1260
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1262
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$1200(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getAllAppProgressKeys()Ljava/util/ArrayList;

    move-result-object v0

    .line 1263
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1264
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iget-object v2, v2, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v2, v2, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1265
    new-instance v9, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$1200(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V

    .line 1266
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v2

    invoke-virtual {v2, v1, v9}, Lcom/miui/home/launcher/progress/ProgressManager;->getInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 1267
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$1200(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v9, v3}, Lcom/miui/home/launcher/progress/ProgressManager;->bindAppProgressItem(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1268
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iget-object v2, v2, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v2, v1, v9}, Lcom/miui/home/launcher/LauncherModel;->addProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method
