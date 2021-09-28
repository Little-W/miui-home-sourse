.class public Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareAppShortcutMenuItem"
.end annotation


# instance fields
.field private mApkFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 107
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->mApkFile:Ljava/io/File;

    .line 108
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100332

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f08050b

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getApkFile()Ljava/io/File;
    .locals 3

    .line 176
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->getPackage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "ShortcutMenu"

    const-string v2, "get share apk file"

    .line 182
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$getOnClickListener$0(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;Landroid/view/View;)V
    .locals 2

    .line 121
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->mApkFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "is_share_apk_disclaimer_shown"

    const/4 v1, 0x0

    .line 123
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->mApkFile:Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->shareApk(Lcom/miui/home/launcher/Launcher;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->mApkFile:Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->showDisclaimerDialog(Lcom/miui/home/launcher/Launcher;Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$showDisclaimerDialog$1(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;Lcom/miui/home/launcher/Launcher;Ljava/io/File;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->shareApk(Lcom/miui/home/launcher/Launcher;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private shareApk(Lcom/miui/home/launcher/Launcher;Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "application/vnd.android.package-archive"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.home.fileprovider"

    .line 136
    invoke-static {p1, v1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    .line 138
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    .line 139
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.miui.mishare.extra.MISHARE_APK_PACKAGE_NAME"

    .line 140
    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ShortcutMenu"

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file.path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", uri="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 143
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    const-string p1, "share"

    .line 144
    invoke-static {p3, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickShortcutMenuItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showDisclaimerDialog(Lcom/miui/home/launcher/Launcher;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 148
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100336

    .line 149
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100334

    .line 150
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ShareAppShortcutMenuItem$JysaqrL2S1Uwoi4tEHc5hXC_gtY;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ShareAppShortcutMenuItem$JysaqrL2S1Uwoi4tEHc5hXC_gtY;-><init>(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;Lcom/miui/home/launcher/Launcher;Ljava/io/File;Ljava/lang/String;)V

    const p2, 0x7f100335

    .line 151
    invoke-virtual {v0, p2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/4 p3, 0x0

    .line 154
    invoke-virtual {p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 155
    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p2

    .line 156
    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const-string p2, "is_share_apk_disclaimer_shown"

    const/4 p3, 0x1

    .line 157
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 120
    new-instance v0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ShareAppShortcutMenuItem$BKbcT66aeHJWcNxcbLVgqEbqcOw;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ShareAppShortcutMenuItem$BKbcT66aeHJWcNxcbLVgqEbqcOw;-><init>(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;)V

    return-object v0
.end method

.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 3

    .line 162
    invoke-super {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->isValid(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/Utilities;->equalsUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 165
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/Utilities;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->getApkFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->mApkFile:Ljava/io/File;

    .line 167
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->mApkFile:Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p1, "ShortcutMenu"

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can share, pkgName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hasValidFile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    return v1
.end method

.method protected resetData()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->resetData()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;->mApkFile:Ljava/io/File;

    return-void
.end method
