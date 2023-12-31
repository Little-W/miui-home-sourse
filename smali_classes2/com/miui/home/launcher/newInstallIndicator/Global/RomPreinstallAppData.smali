.class public Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;
.super Ljava/lang/Object;
.source "RomPreinstallAppData.java"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mContainer:Ljava/lang/String;

.field private mIsShowNewInstallIndicator:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default"

    .line 25
    iput-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mContainer:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mComponentName:Landroid/content/ComponentName;

    .line 47
    iput-object p3, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mContainer:Ljava/lang/String;

    .line 48
    iput-boolean p4, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mIsShowNewInstallIndicator:Z

    return-void
.end method

.method public static build(Landroid/database/Cursor;)Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;
    .locals 5

    const-string v0, "package"

    .line 30
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "className"

    .line 35
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "emptyClassName"

    .line 40
    :cond_1
    new-instance v2, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;

    const-string v3, "folderId"

    .line 41
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dot"

    .line 42
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v4, 0x1

    if-ne p0, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v2, v0, v1, v3, v4}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContainer()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mContainer:Ljava/lang/String;

    return-object p0
.end method

.method public getFoldeTitle()Ljava/lang/String;
    .locals 3

    .line 72
    iget-object p0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mContainer:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xef21700

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x64ff9c4a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "recommendFolder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "gameFolder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    const-string p0, "com.miui.home:string/default_folder_title_game"

    return-object p0

    :cond_4
    const-string p0, "com.miui.home:string/default_folder_title_recommend"

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortComponentName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-static {p0, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isInFolder()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mContainer:Ljava/lang/String;

    const-string v1, "recommendFolder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mContainer:Ljava/lang/String;

    const-string v0, "gameFolder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isShowNewInstallIndicator()Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mIsShowNewInstallIndicator:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mComponentName:Landroid/content/ComponentName;

    .line 89
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mContainer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isShowIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->mIsShowNewInstallIndicator:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
