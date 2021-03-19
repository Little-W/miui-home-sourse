.class public Lcom/miui/home/launcher/RemoteShortcutInfo;
.super Lcom/miui/home/launcher/AppInfo;
.source "RemoteShortcutInfo.java"


# static fields
.field private static sDefaultIcon:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mLocalIconUri:Landroid/net/Uri;

.field private mNetIconUrl:Ljava/lang/String;

.field protected mRemotePkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/miui/home/launcher/AppInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/miui/home/launcher/AppInfo;-><init>()V

    .line 37
    iput p1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->itemType:I

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->spanX:I

    .line 39
    iput p1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->spanY:I

    return-void
.end method

.method private getIconFromUri(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "android.resource"

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {v0, v1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/Utilities;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mShowDefaultIcon:Z

    .line 89
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getDefaultProgressIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 91
    :cond_2
    iput-boolean v1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mShowDefaultIcon:Z

    .line 92
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public canBeDeleted(Landroid/content/Context;)Z
    .locals 1

    .line 131
    iget p1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->itemType:I

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultProgressIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 135
    sget-object v0, Lcom/miui/home/launcher/RemoteShortcutInfo;->sDefaultIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 137
    sget-object p1, Lcom/miui/home/launcher/RemoteShortcutInfo;->sDefaultIcon:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    invoke-static {v1, p1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    sput-object p1, Lcom/miui/home/launcher/RemoteShortcutInfo;->sDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 141
    sget-object p1, Lcom/miui/home/launcher/RemoteShortcutInfo;->sDefaultIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    sget-object p1, Lcom/miui/home/launcher/RemoteShortcutInfo;->sDefaultIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 143
    sget-object p1, Lcom/miui/home/launcher/RemoteShortcutInfo;->sDefaultIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 97
    iget p2, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->itemType:I

    const/16 v0, 0xf

    if-ne p2, v0, :cond_1

    .line 98
    iget-boolean p2, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mShowDefaultIcon:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getIconFromUri(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 103
    :cond_1
    iget p2, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->itemType:I

    const/16 v0, 0xb

    if-eq p2, v0, :cond_3

    iget p2, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->itemType:I

    const/16 v0, 0xd

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 105
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_4

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p3}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_5

    .line 109
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getIconFromUri(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getLocalIconUri()Landroid/net/Uri;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mLocalIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNetIconUrl()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mNetIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mRemotePkgName:Ljava/lang/String;

    return-object v0
.end method

.method public handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z
    .locals 3

    .line 119
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/AppInfo;->handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 121
    :cond_0
    iget p2, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->itemType:I

    const/16 v1, 0xf

    if-ne p2, v1, :cond_1

    .line 122
    iget-wide v1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->container:J

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->handleClick(Lcom/miui/home/launcher/RemoteShortcutInfo;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setLocalIconUri(Landroid/net/Uri;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mLocalIconUri:Landroid/net/Uri;

    return-void
.end method

.method public setNetIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mNetIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mRemotePkgName:Ljava/lang/String;

    return-void
.end method
