.class final Lcom/miui/home/launcher/LauncherModel$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherModel$1$_lancet;
    }
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$1;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$1;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 477
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$1;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$1;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$1;->val$values:Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 478
    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "update Item in database failed"

    .line 479
    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel$1$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method
