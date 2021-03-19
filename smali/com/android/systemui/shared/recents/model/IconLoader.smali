.class public Lcom/android/systemui/shared/recents/model/IconLoader;
.super Ljava/lang/Object;
.source "IconLoader.java"


# static fields
.field public static final IS_MIUI_LITE_DEVICE:Z

.field private static final TAG:Ljava/lang/String; = "IconLoader"

.field private static sGetIconMethod:Lmiui/reflect/Method;


# instance fields
.field protected final mActivityInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

.field protected final mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/recents/model/TaskKeyLruCache<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    invoke-static {}, Lcom/android/systemui/shared/recents/model/IconLoader;->isMiuiLiteVersion()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/shared/recents/model/IconLoader;->IS_MIUI_LITE_DEVICE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/shared/recents/model/TaskKeyLruCache<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/util/LruCache<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mPm:Landroid/content/pm/PackageManager;

    .line 45
    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    .line 46
    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 49
    sget-object p2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 p3, 0x1

    invoke-static {p3, p3, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p3, 0x0

    .line 50
    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 51
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method private getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, p1, v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 71
    :try_start_0
    sget-object v3, Lcom/android/systemui/shared/recents/model/IconLoader;->sGetIconMethod:Lmiui/reflect/Method;

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x6

    if-nez v3, :cond_0

    .line 72
    const-class v3, Lmiui/content/res/IconCustomizer;

    const-string v11, "getIcon"

    new-array v12, v10, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    aput-object v13, v12, v9

    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v8

    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v7

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v6

    const-class v13, Landroid/content/pm/ApplicationInfo;

    aput-object v13, v12, v5

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v4

    const-class v13, Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-static {v12, v13}, Lmiui/reflect/ReflectUtils;->getSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    .line 72
    invoke-static {v3, v11, v12}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/shared/recents/model/IconLoader;->sGetIconMethod:Lmiui/reflect/Method;

    .line 77
    :cond_0
    sget-object v3, Lcom/android/systemui/shared/recents/model/IconLoader;->sGetIconMethod:Lmiui/reflect/Method;

    const-class v11, Lmiui/content/res/IconCustomizer;

    new-array v10, v10, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v12, p0

    :try_start_1
    iget-object v13, v12, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    aput-object v13, v10, v9

    aput-object v0, v10, v8

    aput-object v1, v10, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v6

    aput-object p5, v10, v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v10, v4

    invoke-virtual {v3, v11, v2, v10}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_1

    move-object v4, p1

    .line 79
    :try_start_2
    invoke-static {p1, v0, v1, v2}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v12, p0

    :goto_0
    move-object v3, v2

    :goto_1
    const-string v1, "IconLoader"

    const-string v2, "invokeObject"

    .line 82
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-object v3
.end method

.method private getCustomizedIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v6

    .line 98
    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 99
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/shared/recents/model/IconLoader;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static isMiuiLiteVersion()Z
    .locals 3

    .line 59
    :try_start_0
    const-class v0, Lmiui/os/Build;

    const-string v1, "IS_MIUI_LITE_VERSION"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "IconLoader"

    const-string v2, "reflect failed when get is miui lite device"

    .line 62
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p4, :cond_3

    .line 113
    :try_start_0
    sget-boolean p4, Lcom/android/systemui/shared/recents/model/IconLoader;->IS_MIUI_LITE_DEVICE:Z

    if-eqz p4, :cond_1

    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getCustomizedIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    .line 116
    :cond_1
    iget p4, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, p2, p4, p3}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 119
    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    const-string p3, "IconLoader"

    const-string p4, "getBadgedTaskDescriptionIcon error"

    .line 123
    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 129
    iget p3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 131
    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;
    .locals 4

    .line 188
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getTopComponentIfItIsSetting()Landroid/content/ComponentName;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2

    .line 191
    invoke-static {}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    move-result-object v1

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {p1, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "IconLoader"

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected null component name or activity info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->getInstance(Landroid/content/Context;)Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->get(Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/shared/recents/webapps/WebAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mPm:Landroid/content/pm/PackageManager;

    const-wide/32 v2, 0x2932e00

    invoke-static {v0, p1, v1, v2, v3}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    .line 156
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 159
    :cond_3
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 160
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 162
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 170
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 175
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getIcon(Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->get(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 207
    sget-boolean v0, Lcom/android/systemui/shared/recents/model/IconLoader;->IS_MIUI_LITE_DEVICE:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getCustomizedIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 210
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 214
    invoke-static {}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 215
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 214
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "IconLoader"

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method
