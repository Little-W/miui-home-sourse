.class public Lcom/miui/home/library/IconProviderHelper;
.super Ljava/lang/Object;
.source "IconProviderHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/home/library/IconProviderHelper;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/library/IconProviderHelper;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/miui/home/library/IconProviderHelper;
    .locals 1

    .line 18
    new-instance v0, Lcom/miui/home/library/IconProviderHelper;

    invoke-direct {v0, p0}, Lcom/miui/home/library/IconProviderHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 27
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 32
    iget-object v2, p0, Lcom/miui/home/library/IconProviderHelper;->mContext:Landroid/content/Context;

    const-wide/32 v5, 0x36ee80

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    move-object v3, v1

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/MamlUtils;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/miui/home/library/IconProviderHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v8, v0}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    .line 36
    iget-object v3, p0, Lcom/miui/home/library/IconProviderHelper;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 37
    iget-object v2, p0, Lcom/miui/home/library/IconProviderHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0, v0}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_3
    return-object v2

    :cond_4
    :goto_0
    return-object v0
.end method
