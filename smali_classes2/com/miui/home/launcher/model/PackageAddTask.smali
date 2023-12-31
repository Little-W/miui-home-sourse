.class public Lcom/miui/home/launcher/model/PackageAddTask;
.super Lcom/miui/home/launcher/model/BaseModelUpdateTask;
.source "PackageAddTask.java"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/home/launcher/model/PackageAddTask;->mPackageName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/miui/home/launcher/model/PackageAddTask;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 3

    .line 22
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/model/PackageAddTask;->mPackageName:Ljava/lang/String;

    const-string v1, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/model/PackageAddTask;->mPackageName:Ljava/lang/String;

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/model/PackageAddTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2, p0}, Lcom/miui/home/launcher/LauncherModel;->onReceiveBackground(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
