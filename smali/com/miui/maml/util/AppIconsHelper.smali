.class public Lcom/miui/maml/util/AppIconsHelper;
.super Ljava/lang/Object;
.source "AppIconsHelper.java"


# static fields
.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60

.field private static mAnimatingIconsResourceManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ResourceManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

.field private static mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

.field private static mThemeChanged:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Ljava/util/HashMap;

    .line 44
    new-instance v0, Lcom/miui/maml/util/AppIconsHelper$1;

    invoke-direct {v0}, Lcom/miui/maml/util/AppIconsHelper$1;-><init>()V

    sput-object v0, Lcom/miui/maml/util/AppIconsHelper;->mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkVersion(Landroid/content/Context;)V
    .locals 1

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 174
    invoke-static {p0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Configuration_getThemeChanged(Landroid/content/res/Configuration;)I

    move-result p0

    .line 175
    sget v0, Lcom/miui/maml/util/AppIconsHelper;->mThemeChanged:I

    if-le p0, v0, :cond_0

    .line 176
    invoke-static {}, Lcom/miui/maml/util/AppIconsHelper;->clearCache()V

    .line 177
    sput p0, Lcom/miui/maml/util/AppIconsHelper;->mThemeChanged:I

    :cond_0
    return-void
.end method

.method public static cleanUp()V
    .locals 0

    .line 57
    invoke-static {}, Lcom/miui/maml/RenderThread;->globalThreadStop()V

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .line 182
    sget-object v0, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/miui/maml/util/RendererCoreCache;->clear()V

    .line 185
    :cond_0
    sget-object v0, Lcom/miui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method public static getFancyIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    const/4 v8, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 116
    invoke-static/range {v1 .. v8}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-wide/16 v0, 0x0

    .line 70
    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 74
    invoke-static {p0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_getInstance_with_int(I)Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 78
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_1

    instance-of v0, p1, Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object v3, v0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    move-object v6, p5

    .line 89
    invoke-static/range {v0 .. v6}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    .line 92
    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 120
    invoke-static {p0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_getInstance_with_int(I)Landroid/os/UserHandle;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v7}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    .line 124
    invoke-static/range {v0 .. v7}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;Z)Landroid/graphics/drawable/Drawable;
    .locals 12

    .line 130
    sget-object v0, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/miui/maml/util/RendererCoreCache;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/miui/maml/util/RendererCoreCache;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    :cond_0
    const/4 v1, 0x0

    .line 135
    :try_start_0
    invoke-static {p0}, Lcom/miui/maml/util/AppIconsHelper;->checkVersion(Landroid/content/Context;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_getIdentifier(Landroid/os/UserHandle;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {p1, p2, p3}, Lmiui/content/res/IconCustomizer;->getAnimatingIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez p7, :cond_4

    .line 141
    sget-object v3, Lcom/miui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/ResourceManager;

    :goto_0
    if-nez v3, :cond_2

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "quiet/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    new-instance v3, Lcom/miui/maml/LifecycleResourceManager;

    new-instance v7, Lcom/miui/maml/util/FancyIconResourceLoader;

    invoke-direct {v7, v2}, Lcom/miui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    const-wide/32 v8, 0x36ee80

    const-wide/32 v10, 0x57e40

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/miui/maml/LifecycleResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;JJ)V

    .line 147
    sget-object v2, Lcom/miui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v3

    goto :goto_1

    :cond_2
    move-object v6, v3

    :goto_1
    if-eqz v6, :cond_3

    .line 150
    new-instance v0, Lcom/miui/maml/AnimatingDrawable;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;)V

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_3

    .line 153
    :cond_4
    sget-object v3, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    move-wide/from16 v6, p4

    invoke-virtual {v3, v0, v6, v7}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v3

    if-nez v3, :cond_6

    if-eqz v2, :cond_5

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fancy/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 157
    :cond_5
    invoke-static {p1, p2, p3}, Lmiui/content/res/IconCustomizer;->getFancyIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    :goto_2
    sget-object v3, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    new-instance v8, Lcom/miui/maml/util/FancyIconResourceLoader;

    invoke-direct {v8, v2}, Lcom/miui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/miui/maml/util/AppIconsHelper;->mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

    move-object v4, v0

    move-object v5, p0

    move-wide/from16 v6, p4

    invoke-virtual/range {v3 .. v9}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLcom/miui/maml/ResourceLoader;Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_7

    .line 160
    iget-object v0, v3, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/miui/maml/FancyDrawable;

    iget-object v2, v3, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    invoke-direct {v0, v2}, Lcom/miui/maml/FancyDrawable;-><init>(Lcom/miui/maml/RendererCore;)V

    goto :goto_3

    :cond_7
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_8

    move-object v2, p0

    move-object/from16 v3, p6

    .line 163
    invoke-static {p0, v0, v3}, Lcom/miui/maml/util/PortableUtils;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "MAML AppIconsHelper"

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-wide/16 v0, 0x0

    .line 61
    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 65
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 66
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 96
    invoke-static {p0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_getInstance_with_int(I)Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 102
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 103
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 106
    invoke-static/range {v1 .. v7}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
