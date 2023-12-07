.class public Lcom/miui/home/recents/util/PairUtils;
.super Ljava/lang/Object;
.source "PairUtils.java"


# static fields
.field private static final PKGS_SUPPORT_UNINSTALL_MAPPING:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/home/recents/util/PairUtils;->PKGS_SUPPORT_UNINSTALL_MAPPING:Landroid/util/ArrayMap;

    .line 40
    sget-object v0, Lcom/miui/home/recents/util/PairUtils;->PKGS_SUPPORT_UNINSTALL_MAPPING:Landroid/util/ArrayMap;

    const-string v1, "com.miui.securitycenter"

    const-string v2, "com.miui.securitymanager"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addPairIconToWorkspace(Lcom/miui/home/launcher/PairShortcutInfo;Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Z)V
    .locals 6

    .line 137
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 138
    invoke-static {p0}, Lcom/miui/home/recents/util/PairUtils;->getShortcutIntent(Lcom/miui/home/launcher/PairShortcutInfo;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.ICON"

    .line 139
    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "iconType"

    const/4 v1, 0x7

    .line 140
    invoke-virtual {v2, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.INTENT"

    .line 141
    invoke-virtual {v2, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/PairShortcutInfo;->getPairName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/miui/home/recents/util/PairUtils$1;

    invoke-direct {v5, p1, p3, p0}, Lcom/miui/home/recents/util/PairUtils$1;-><init>(Lcom/miui/home/launcher/Launcher;ZLcom/miui/home/launcher/PairShortcutInfo;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    .line 144
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/InstallShortcutReceiver;->checkToAddShortcut(Landroid/content/Context;Lcom/miui/launcher/common/PinItemRequestCompat;Landroid/content/Intent;Ljava/lang/String;ILcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;)V

    return-void
.end method

.method public static createPairBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 94
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f59999a    # 0.85f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 95
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    .line 96
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 98
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    .line 99
    invoke-virtual {p0, v7, v7, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 102
    div-int/lit8 p0, v1, 0x2

    sub-int/2addr p0, v3

    int-to-float p0, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p0, v2

    sub-int v8, v1, v3

    int-to-float v8, v8

    div-float/2addr v8, v2

    invoke-virtual {v6, p0, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    invoke-virtual {p1, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 104
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float p0, v1

    div-float/2addr p0, v2

    const/4 p1, 0x0

    .line 105
    invoke-virtual {v6, p0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    invoke-virtual {p2, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 109
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v5

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static createPairBitmap(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 119
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconImageViewPadding()I

    move-result v1

    .line 122
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 124
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int v1, v1

    int-to-float v1, v1

    .line 125
    invoke-virtual {v3, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr p0, v4

    int-to-float p0, p0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p0, v4

    invoke-virtual {v3, v1, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 129
    invoke-virtual {p1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 130
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 131
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-object v2

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static enterAppPairFromShortCut(Ljava/lang/Object;Landroid/app/ActivityOptions;)Ljava/lang/Object;
    .locals 5

    .line 186
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 189
    :cond_0
    instance-of v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;

    if-eqz v0, :cond_1

    .line 190
    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/PairShortcutInfo;

    .line 191
    iget-wide v1, v0, Lcom/miui/home/launcher/PairShortcutInfo;->container:J

    const-wide/16 v3, -0x67

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 192
    const-class p0, Ljava/lang/Void;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "setEnterAppPairFromShortCut"

    invoke-static {p1, p0, v3, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v0}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static findAppInfo(Ljava/util/List;Ljava/lang/String;I)Lcom/miui/home/launcher/AppInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/miui/home/launcher/AppInfo;"
        }
    .end annotation

    .line 50
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 51
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    .line 52
    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    if-ne v1, p2, :cond_1

    return-object v0

    .line 55
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/util/PairUtils;->PKGS_SUPPORT_UNINSTALL_MAPPING:Landroid/util/ArrayMap;

    .line 56
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 55
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    .line 57
    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findPairShortcutInfo(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/List;)Lcom/miui/home/launcher/PairShortcutInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)",
            "Lcom/miui/home/launcher/PairShortcutInfo;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p1, v0, v2}, Lcom/miui/home/recents/util/PairUtils;->findAppInfo(Ljava/util/List;Ljava/lang/String;I)Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p1, v2, p0}, Lcom/miui/home/recents/util/PairUtils;->findAppInfo(Ljava/util/List;Ljava/lang/String;I)Lcom/miui/home/launcher/AppInfo;

    move-result-object p0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p1, v0, p0}, Lcom/miui/home/recents/util/PairUtils;->findAppInfo(Ljava/util/List;Ljava/lang/String;I)Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    move-object p0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p0, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppInfo;->makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    if-nez p1, :cond_3

    return-object v1

    .line 85
    :cond_3
    new-instance v0, Lcom/miui/home/launcher/PairShortcutInfo;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/PairShortcutInfo;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-object v0
.end method

.method public static getShortcutIntent(Lcom/miui/home/launcher/PairShortcutInfo;)Landroid/content/Intent;
    .locals 2

    .line 176
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result p0

    .line 179
    invoke-static {v0, v1, p0}, Lcom/miui/home/recents/util/PairUtils;->initAppPairIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static initAppPairIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "app_pair_package_name"

    .line 168
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "app_pair_user_id"

    .line 169
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public static isSupportAddPairFromRecent()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportLaunchPairApp:Z

    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
