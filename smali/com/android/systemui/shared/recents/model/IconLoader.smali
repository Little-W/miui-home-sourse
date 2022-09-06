.class public Lcom/android/systemui/shared/recents/model/IconLoader;
.super Ljava/lang/Object;
.source "IconLoader.java"


# static fields
.field public static final IS_MIUI_LITE_DEVICE:Z

.field private static final TAG:Ljava/lang/String; = "IconLoader"

.field private static sGetIconMethod:Ljava/lang/reflect/Method;


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

.field private mDeviceLevel:I

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

    .line 61
    invoke-static {}, Lcom/android/systemui/shared/recents/model/IconLoader;->isMiuiLiteVersion()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/shared/recents/model/IconLoader;->IS_MIUI_LITE_DEVICE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;I)V
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
            ">;I)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mPm:Landroid/content/pm/PackageManager;

    .line 51
    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    .line 52
    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 55
    sget-object p2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 p3, 0x1

    invoke-static {p3, p3, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p3, 0x0

    .line 56
    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 57
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 58
    iput p4, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mDeviceLevel:I

    return-void
.end method

.method private convertToDrawingLiteDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 253
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_0

    .line 254
    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 255
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 256
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 255
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 258
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 259
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_0
    return-object p1
.end method

.method private getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, p1, v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 78
    :try_start_0
    sget-object v3, Lcom/android/systemui/shared/recents/model/IconLoader;->sGetIconMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x6

    if-nez v3, :cond_0

    .line 79
    const-class v3, Lmiui/content/res/IconCustomizer;

    const-string v11, "getIcon"

    const-class v12, Landroid/graphics/drawable/Drawable;

    new-array v13, v10, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    aput-object v14, v13, v9

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v8

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v7

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v6

    const-class v14, Landroid/content/pm/ApplicationInfo;

    aput-object v14, v13, v5

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v4

    .line 80
    invoke-static {v12, v13}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    new-array v13, v10, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    aput-object v14, v13, v9

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v8

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v7

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v6

    const-class v14, Landroid/content/pm/ApplicationInfo;

    aput-object v14, v13, v5

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v4

    .line 79
    invoke-static {v3, v11, v12, v13}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/shared/recents/model/IconLoader;->sGetIconMethod:Ljava/lang/reflect/Method;

    .line 83
    :cond_0
    sget-object v3, Lcom/android/systemui/shared/recents/model/IconLoader;->sGetIconMethod:Ljava/lang/reflect/Method;

    new-array v10, v10, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v11, p0

    :try_start_1
    iget-object v12, v11, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    aput-object v12, v10, v9

    aput-object v0, v10, v8

    aput-object v1, v10, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v6

    aput-object p5, v10, v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v10, v4

    invoke-virtual {v3, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_1

    move-object/from16 v4, p1

    .line 85
    :try_start_2
    invoke-static {v4, v0, v1, v2}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

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

    move-object v11, p0

    :goto_0
    move-object v3, v2

    :goto_1
    const-string v1, "IconLoader"

    const-string v2, "invokeObject"

    .line 88
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-object v3
.end method

.method private getCustomizedIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 94
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getTopComponentOrBaseComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getTopComponentOrBaseComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getTopComponentOrBaseComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 103
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v6

    .line 104
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 105
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/shared/recents/model/IconLoader;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 107
    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 110
    :cond_2
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static isMiuiLiteVersion()Z
    .locals 3

    .line 66
    :try_start_0
    const-class v0, Lmiui/os/Build;

    const-string v1, "IS_MIUI_LITE_VERSION"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 69
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p4, :cond_3

    .line 126
    :try_start_0
    sget-boolean p4, Lcom/android/systemui/shared/recents/model/IconLoader;->IS_MIUI_LITE_DEVICE:Z

    if-eqz p4, :cond_1

    .line 127
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getCustomizedIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    .line 129
    :cond_1
    iget p4, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, p2, p4, p3}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 132
    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    const-string p3, "IconLoader"

    const-string p4, "getBadgedTaskDescriptionIcon error"

    .line 136
    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 142
    iget p3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 144
    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;
    .locals 5

    .line 201
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getTopComponentOrBaseComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_3

    .line 207
    invoke-static {}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {p1, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "IconLoader"

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected null component name or activity info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    :goto_2
    return-object v2
.end method

.method public getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->getInstance(Landroid/content/Context;)Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->get(Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/shared/recents/webapps/WebAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 166
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mPm:Landroid/content/pm/PackageManager;

    const-wide/32 v2, 0x2932e00

    invoke-static {v0, p1, v1, v2, v3}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    .line 169
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 172
    :cond_3
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 173
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 175
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 183
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 188
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

    .line 267
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getIcon(Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->get(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 223
    sget-boolean v0, Lcom/android/systemui/shared/recents/model/IconLoader;->IS_MIUI_LITE_DEVICE:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getCustomizedIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    .line 227
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 226
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 230
    invoke-static {}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 231
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getTopComponentOrBaseComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 230
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "IconLoader"

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 244
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->convertToDrawingLiteDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/IconLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method
