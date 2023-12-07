.class public Lcom/miui/home/launcher/LauncherModel$PackageAndUser;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageAndUser"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->packageName:Ljava/lang/String;

    .line 283
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->user:Landroid/os/UserHandle;

    return-void
.end method

.method public static from(Landroid/content/pm/LauncherActivityInfo;)Lcom/miui/home/launcher/LauncherModel$PackageAndUser;
    .locals 2

    .line 296
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 291
    check-cast p1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->user:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->user:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
