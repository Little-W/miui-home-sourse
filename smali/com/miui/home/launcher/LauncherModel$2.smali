.class Lcom/miui/home/launcher/LauncherModel$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel;->updateScreens(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$orderedValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$2;->val$orderedValue:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$2;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 551
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "screenOrder"

    .line 554
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$2;->val$orderedValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$2;->val$cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "Failed to update screens table for reorder, aborting"

    .line 556
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    return-void
.end method
