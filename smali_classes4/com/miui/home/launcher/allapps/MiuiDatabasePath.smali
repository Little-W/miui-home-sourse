.class public Lcom/miui/home/launcher/allapps/MiuiDatabasePath;
.super Ljava/lang/Object;
.source "MiuiDatabasePath.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/LauncherModeDatabasePath;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesktopModePath(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    const-string p0, "foo"

    .line 23
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getDrawerModePath(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    const-string p0, "drawer"

    .line 18
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
