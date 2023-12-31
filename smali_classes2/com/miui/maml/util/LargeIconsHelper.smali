.class public Lcom/miui/maml/util/LargeIconsHelper;
.super Ljava/lang/Object;
.source "LargeIconsHelper.java"


# static fields
.field private static final ICON_TRANSFORM_CONFIG:Ljava/lang/String; = "transform_config.xml"

.field public static final INVALID_INDEX:I = -0x1

.field public static final LARGE_ICONS_APP_FOLD:Ljava/lang/String; = "apps"

.field public static final LARGE_ICONS_CONFIG_FILE_NAME:Ljava/lang/String; = "runtime_largeicon.config"

.field public static final LARGE_ICONS_CONFIG_FILE_PATH:Ljava/lang/String; = "data/system/theme/large_icons"

.field private static final LAYER_NUM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LargeIconsHelper"

.field private static final iconSizeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ResourceManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mMamlAdaptiveIconsConfigFile:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/util/ConfigFile;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mMamlAdaptiveIconsResourceManagers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ResourceManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

.field private static mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

.field private static volatile sManagerList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/util/LargeIconConfigFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/maml/util/LargeIconsHelper;->mMamlAdaptiveIconsConfigFile:Landroid/util/ArrayMap;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/maml/util/LargeIconsHelper;->mMamlAdaptiveIconsResourceManagers:Landroid/util/ArrayMap;

    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/maml/util/LargeIconsHelper;->mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/maml/util/LargeIconsHelper;->iconSizeTypes:Ljava/util/ArrayList;

    .line 67
    sget-object v0, Lcom/miui/maml/util/LargeIconsHelper;->iconSizeTypes:Ljava/util/ArrayList;

    const-string v1, "1x1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/miui/maml/util/LargeIconsHelper;->iconSizeTypes:Ljava/util/ArrayList;

    const-string v1, "1x2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/miui/maml/util/LargeIconsHelper;->iconSizeTypes:Ljava/util/ArrayList;

    const-string v1, "2x1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/miui/maml/util/LargeIconsHelper;->iconSizeTypes:Ljava/util/ArrayList;

    const-string v1, "2x2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    sget-object v0, Lcom/miui/maml/util/-$$Lambda$LargeIconsHelper$-XBZ9GjYvjClmxZG9uMxyTZRxV4;->INSTANCE:Lcom/miui/maml/util/-$$Lambda$LargeIconsHelper$-XBZ9GjYvjClmxZG9uMxyTZRxV4;

    sput-object v0, Lcom/miui/maml/util/LargeIconsHelper;->mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateIconSize(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/maml/util/LargeIconsHelper;->iconSizeTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 257
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->size:Ljava/lang/String;

    return-object p0
.end method

.method public static cleanUp()V
    .locals 0

    .line 605
    invoke-static {}, Lcom/miui/maml/RenderThread;->globalThreadStop()V

    return-void
.end method

.method public static clearCache(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 612
    sget-object v0, Lcom/miui/maml/util/LargeIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0}, Lcom/miui/maml/util/RendererCoreCache;->clear()V

    .line 615
    :cond_0
    sget-object v0, Lcom/miui/maml/util/LargeIconsHelper;->mMamlAdaptiveIconsConfigFile:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 616
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 618
    :cond_1
    sget-object v0, Lcom/miui/maml/util/LargeIconsHelper;->mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 619
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 621
    :cond_2
    sget-object v0, Lcom/miui/maml/util/LargeIconsHelper;->mMamlAdaptiveIconsResourceManagers:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3

    .line 622
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 624
    :cond_3
    invoke-static {p0}, Lcom/miui/maml/util/LargeIconResManager;->clearCache(Ljava/util/List;)V

    return-void
.end method

.method private static createLifecycleResourceManagerFromeCache(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ResourceManager;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ResourceManager;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/maml/ResourceManager;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 594
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    goto :goto_0

    .line 595
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ResourceManager;

    :goto_0
    if-nez v0, :cond_2

    .line 597
    new-instance v0, Lcom/miui/maml/LifecycleResourceManager;

    new-instance v2, Lcom/miui/maml/util/LargeIconResourceLoader;

    invoke-direct {v2, p1}, Lcom/miui/maml/util/LargeIconResourceLoader;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0x36ee80

    const-wide/32 v5, 0x57e40

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/maml/LifecycleResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;JJ)V

    .line 599
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private static createSubAnimatingDrawable(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)Lcom/miui/maml/AnimatingDrawable;
    .locals 14

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move/from16 v7, p8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 431
    invoke-static {v0, v7}, Lcom/miui/maml/util/LargeIconsHelper;->getUseQuietWhenAnimFromConfig(Lcom/miui/maml/util/ConfigFile;I)Z

    move-result v1

    .line 432
    invoke-static {v0, v7}, Lcom/miui/maml/util/LargeIconsHelper;->getUseFancyWhenStaticFromConfig(Lcom/miui/maml/util/ConfigFile;I)Z

    move-result v3

    move v8, v1

    move v9, v3

    goto :goto_0

    :cond_0
    move v8, v1

    move v9, v8

    .line 435
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, p1

    move-object/from16 v3, p5

    move-object/from16 v5, p7

    invoke-static {v2, v3, p1, v5}, Lcom/miui/maml/util/LargeIconsHelper;->generateCacheKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    sget-object v4, Lcom/miui/maml/util/LargeIconsHelper;->mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, p6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/quiet/"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Lcom/miui/maml/util/LargeIconsHelper;->createLifecycleResourceManagerFromeCache(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ResourceManager;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    .line 439
    new-instance v13, Lcom/miui/maml/AnimatingDrawable;

    .line 440
    invoke-static {v0, v7}, Lcom/miui/maml/util/LargeIconsHelper;->getLayerAnimIndex(Lcom/miui/maml/util/ConfigFile;I)I

    move-result v10

    const/4 v11, 0x1

    move-object v0, v13

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    move v7, v10

    move v10, v11

    move-object v11, p0

    move-object v12, p1

    invoke-direct/range {v0 .. v12}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZZLcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)V

    return-object v13

    .line 442
    :cond_1
    new-instance v13, Lcom/miui/maml/AnimatingDrawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, v13

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p8

    move-object v11, p0

    move-object v12, p1

    invoke-direct/range {v0 .. v12}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZZLcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)V

    return-object v13

    .line 446
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to get rm, can\'t create subAD! package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAML AppIconsHelper"

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static generateCacheKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 1

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_getIdentifier(Landroid/os/UserHandle;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static generateLargeIconConfigFile(Ljava/lang/String;)Lcom/miui/maml/util/LargeIconConfigFile;
    .locals 4

    .line 307
    new-instance v0, Lcom/miui/maml/util/LargeIconConfigFile;

    invoke-direct {v0}, Lcom/miui/maml/util/LargeIconConfigFile;-><init>()V

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data/system/theme/large_icons"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/maml/util/LargeIconsHelper;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "apps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "runtime_largeicon.config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/util/LargeIconConfigFile;->load(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "LargeIconsHelper"

    if-eqz v1, :cond_0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateLargeIconConfigFile success, mode is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "generateLargeIconConfigFile returns null"

    .line 313
    invoke-static {v2, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static generateLargeIconFolderPath(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->path:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAdaptiveDrawable(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 18

    .line 348
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p7

    .line 351
    invoke-static {v2, v12, v0, v13}, Lcom/miui/maml/util/LargeIconsHelper;->generateCacheKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v3

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p1}, Lcom/miui/maml/util/LargeIconsHelper;->generateLargeIconFolderPath(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "layer_animating_icons"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 354
    sget-object v4, Lcom/miui/maml/util/LargeIconsHelper;->mMamlAdaptiveIconsConfigFile:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    move-object v4, v1

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/util/ConfigFile;

    :goto_0
    if-nez v4, :cond_3

    .line 357
    new-instance v4, Lcom/miui/maml/util/ConfigFile;

    invoke-direct {v4}, Lcom/miui/maml/util/ConfigFile;-><init>()V

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "config.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 359
    sget-object v5, Lcom/miui/maml/util/LargeIconsHelper;->mMamlAdaptiveIconsConfigFile:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v15, v1

    goto :goto_2

    :cond_3
    :goto_1
    move-object v15, v4

    .line 365
    :goto_2
    sget-object v4, Lcom/miui/maml/util/LargeIconsHelper;->mMamlAdaptiveIconsResourceManagers:Landroid/util/ArrayMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "quiet/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/miui/maml/util/LargeIconsHelper;->createLifecycleResourceManagerFromeCache(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ResourceManager;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v15

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p7

    move-object/from16 v17, v11

    move/from16 v11, v16

    invoke-static/range {v3 .. v11}, Lcom/miui/maml/util/LargeIconsHelper;->createSubAnimatingDrawable(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)Lcom/miui/maml/AnimatingDrawable;

    move-result-object v11

    if-nez v11, :cond_4

    return-object v1

    .line 373
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    move v10, v3

    :goto_3
    const/4 v3, 0x5

    if-ge v10, v3, :cond_5

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v15

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v16, v10

    move-object/from16 v10, p7

    move-object v0, v11

    move/from16 v11, v16

    invoke-static/range {v3 .. v11}, Lcom/miui/maml/util/LargeIconsHelper;->createSubAnimatingDrawable(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)Lcom/miui/maml/AnimatingDrawable;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 378
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v16, 0x1

    move-object v11, v0

    move-object/from16 v0, p1

    goto :goto_3

    :cond_5
    move-object v0, v11

    .line 383
    :cond_6
    new-instance v2, Lcom/miui/maml/MamlAdaptiveIconDrawable;

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 384
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v1, p2

    move-object/from16 v4, v17

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/miui/maml/MamlAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    return-object v2

    :cond_7
    return-object v1
.end method

.method private static getAnimatingDrawable(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 14

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/miui/maml/util/LargeIconsHelper;->generateLargeIconFolderPath(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "animating_icons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p7

    .line 468
    invoke-static {v3, v4, p1, v6}, Lcom/miui/maml/util/LargeIconsHelper;->generateCacheKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    .line 469
    sget-object v2, Lcom/miui/maml/util/LargeIconsHelper;->mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "quiet/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/miui/maml/util/LargeIconsHelper;->createLifecycleResourceManagerFromeCache(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ResourceManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 473
    new-instance v0, Lcom/miui/maml/AnimatingDrawable;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p7

    move-object v12, p0

    move-object v13, p1

    invoke-direct/range {v1 .. v13}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZZLcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getFancyDrawable(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 494
    invoke-static {p3, p4, p1, p7}, Lcom/miui/maml/util/LargeIconsHelper;->generateCacheKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    .line 495
    sget-object p3, Lcom/miui/maml/util/LargeIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    if-nez p3, :cond_0

    .line 496
    new-instance p3, Lcom/miui/maml/util/RendererCoreCache;

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p7

    invoke-direct {p4, p7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, p4}, Lcom/miui/maml/util/RendererCoreCache;-><init>(Landroid/os/Handler;)V

    sput-object p3, Lcom/miui/maml/util/LargeIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    .line 498
    :cond_0
    sget-object p3, Lcom/miui/maml/util/LargeIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    invoke-virtual {p3, v1, p5, p6}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object p3

    if-nez p3, :cond_1

    .line 500
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/miui/maml/util/LargeIconsHelper;->generateLargeIconFolderPath(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "fancy_icons"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 501
    sget-object v0, Lcom/miui/maml/util/LargeIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    new-instance v5, Lcom/miui/maml/util/LargeIconResourceLoader;

    invoke-direct {v5, p0}, Lcom/miui/maml/util/LargeIconResourceLoader;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/miui/maml/util/LargeIconsHelper;->mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

    move-object v2, p2

    move-wide v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLcom/miui/maml/ResourceLoader;Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object p3

    :cond_1
    if-eqz p3, :cond_2

    .line 504
    iget-object p0, p3, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/miui/maml/FancyDrawable;

    iget-object p1, p3, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    invoke-direct {p0, p1}, Lcom/miui/maml/FancyDrawable;-><init>(Lcom/miui/maml/RendererCore;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getFancyDrawableFromAnimating(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 511
    invoke-static {p3, p4, p1, p7}, Lcom/miui/maml/util/LargeIconsHelper;->generateCacheKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    .line 512
    sget-object p3, Lcom/miui/maml/util/LargeIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    if-nez p3, :cond_0

    .line 513
    new-instance p3, Lcom/miui/maml/util/RendererCoreCache;

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p7

    invoke-direct {p4, p7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, p4}, Lcom/miui/maml/util/RendererCoreCache;-><init>(Landroid/os/Handler;)V

    sput-object p3, Lcom/miui/maml/util/LargeIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    .line 515
    :cond_0
    sget-object p3, Lcom/miui/maml/util/LargeIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    invoke-virtual {p3, v1, p5, p6}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object p3

    if-nez p3, :cond_1

    .line 517
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/miui/maml/util/LargeIconsHelper;->generateLargeIconFolderPath(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "animating_icons"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/fancy/"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 518
    sget-object v0, Lcom/miui/maml/util/LargeIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    new-instance v5, Lcom/miui/maml/util/LargeIconResourceLoader;

    invoke-direct {v5, p0}, Lcom/miui/maml/util/LargeIconResourceLoader;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/miui/maml/util/LargeIconsHelper;->mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

    move-object v2, p2

    move-wide v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLcom/miui/maml/ResourceLoader;Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object p3

    :cond_1
    if-eqz p3, :cond_2

    .line 521
    iget-object p0, p3, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/miui/maml/FancyDrawable;

    iget-object p1, p3, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    invoke-direct {p0, p1}, Lcom/miui/maml/FancyDrawable;-><init>(Lcom/miui/maml/RendererCore;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getFancyDrawableFromLayerAnimating(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 529
    invoke-static {p3, p4, p1, p7}, Lcom/miui/maml/util/LargeIconsHelper;->generateCacheKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p3

    .line 530
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/miui/maml/util/LargeIconsHelper;->generateLargeIconFolderPath(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "layer_animating_icons"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/fancy/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    sget-object p1, Lcom/miui/maml/util/LargeIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    invoke-virtual {p1, v1, p5, p6}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 535
    sget-object v0, Lcom/miui/maml/util/LargeIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    new-instance v5, Lcom/miui/maml/util/LargeIconResourceLoader;

    invoke-direct {v5, p0}, Lcom/miui/maml/util/LargeIconResourceLoader;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/miui/maml/util/LargeIconsHelper;->mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

    move-object v2, p2

    move-wide v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLcom/miui/maml/ResourceLoader;Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 537
    iget-object p0, p1, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/maml/FancyDrawable;

    iget-object p1, p1, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    invoke-direct {p0, p1}, Lcom/miui/maml/FancyDrawable;-><init>(Lcom/miui/maml/RendererCore;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized getLargeIconConfigFile(Ljava/lang/String;Z)Lcom/miui/maml/util/LargeIconConfigFile;
    .locals 3

    const-class v0, Lcom/miui/maml/util/LargeIconsHelper;

    monitor-enter v0

    if-eqz p0, :cond_3

    .line 79
    :try_start_0
    sget-object v1, Lcom/miui/maml/util/LargeIconsHelper;->sManagerList:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/miui/maml/util/LargeIconsHelper;->sManagerList:Ljava/util/HashMap;

    .line 82
    :cond_0
    sget-object v1, Lcom/miui/maml/util/LargeIconsHelper;->sManagerList:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/util/LargeIconConfigFile;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    .line 84
    :cond_1
    invoke-static {p0}, Lcom/miui/maml/util/LargeIconsHelper;->generateLargeIconConfigFile(Ljava/lang/String;)Lcom/miui/maml/util/LargeIconConfigFile;

    move-result-object v1

    .line 85
    sget-object p1, Lcom/miui/maml/util/LargeIconsHelper;->sManagerList:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 77
    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "init LargeIconModeRuntimeManager error, mode is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static getLargeIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    .line 128
    invoke-static/range {v0 .. v8}, Lcom/miui/maml/util/LargeIconsHelper;->getLargeIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getLargeIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 10

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    .line 133
    invoke-static/range {v0 .. v9}, Lcom/miui/maml/util/LargeIconsHelper;->getLargeIconDrawable(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getLargeIconDrawable(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 15

    move-object v8, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move-object/from16 v9, p9

    if-eqz v0, :cond_11

    const/4 v10, 0x0

    .line 160
    invoke-static {v0, v10}, Lcom/miui/maml/util/LargeIconsHelper;->getLargeIconConfigFile(Ljava/lang/String;Z)Lcom/miui/maml/util/LargeIconConfigFile;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LargeIconsHelper"

    if-nez v0, :cond_0

    const-string v0, "getLargeIconDrawable config is null"

    .line 163
    invoke-static {v2, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/util/LargeIconConfigFile;->getIconsConfigs()Ljava/util/HashMap;

    move-result-object v0

    .line 169
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v3

    .line 172
    :goto_0
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/maml/util/LargeIconConfigFile$Icon;

    if-nez v5, :cond_2

    .line 174
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/LargeIconConfigFile$Icon;

    goto :goto_1

    :cond_2
    move-object v0, v5

    :goto_1
    const-string v5, " and activity is "

    if-nez v0, :cond_3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config can not find the package that is "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    move-object/from16 v6, p6

    .line 181
    invoke-static {v0, v6}, Lcom/miui/maml/util/LargeIconsHelper;->calculateIconSize(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "transform_config.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-static {v0, v6}, Lcom/miui/maml/util/LargeIconConfigFile;->readTransFormConfig(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)I

    move-result v12

    .line 184
    new-instance v13, Lcom/miui/maml/LargeIconDrawable;

    invoke-direct {v13}, Lcom/miui/maml/LargeIconDrawable;-><init>()V

    .line 185
    invoke-virtual {v13, v11}, Lcom/miui/maml/LargeIconDrawable;->setType(Ljava/lang/String;)V

    .line 186
    iget-object v6, v0, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->uuid:Ljava/lang/String;

    invoke-virtual {v13, v6}, Lcom/miui/maml/LargeIconDrawable;->setUuid(Ljava/lang/String;)V

    .line 187
    iget-object v6, v0, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->localId:Ljava/lang/String;

    invoke-virtual {v13, v6}, Lcom/miui/maml/LargeIconDrawable;->setLocalId(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v13, v12}, Lcom/miui/maml/LargeIconDrawable;->setEnableIconMask(I)V

    .line 189
    iget-object v6, v0, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v6}, Lcom/miui/maml/LargeIconDrawable;->setPackageName(Ljava/lang/String;)V

    .line 190
    invoke-static {v0, v11}, Lcom/miui/maml/util/LargeIconsHelper;->getLargeIconDrawableType(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config can not find the drawableType that is "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 195
    :cond_4
    invoke-virtual {v13, v6}, Lcom/miui/maml/LargeIconDrawable;->setDrawableType(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 196
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v14, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v2, "fancy_icons"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v7

    goto :goto_2

    :sswitch_1
    const-string v2, "layer_animating_icons"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v10

    goto :goto_2

    :sswitch_2
    const-string v2, "res"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v5

    goto :goto_2

    :sswitch_3
    const-string v2, "animating_icons"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v14

    :cond_5
    :goto_2
    if-eqz v1, :cond_f

    if-eq v1, v14, :cond_d

    if-eq v1, v7, :cond_b

    if-eq v1, v5, :cond_6

    goto/16 :goto_4

    :cond_6
    move-object v1, v11

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    .line 221
    invoke-static/range {v0 .. v7}, Lcom/miui/maml/util/LargeIconsHelper;->getResDrawable(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez p1, :cond_a

    if-ne v12, v14, :cond_9

    if-eqz v0, :cond_9

    .line 225
    invoke-static {v11}, Lcom/miui/maml/util/PortableUtils;->cutBlankIcon(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 226
    invoke-static {v0}, Lcom/miui/maml/util/BitmapUtils;->getScaleRatio(Landroid/graphics/drawable/Drawable;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    .line 228
    invoke-static {v0, v1, v10}, Lcom/miui/maml/util/BitmapUtils;->drawableToBitmapWithoutBlank(Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 230
    :cond_7
    invoke-static {v0}, Lcom/miui/maml/util/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 233
    :cond_8
    invoke-static {v0}, Lcom/miui/maml/util/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    :goto_3
    invoke-static {v11}, Lcom/miui/maml/util/PortableUtils;->getMaskCornerId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/miui/maml/util/BitmapUtils;->getBitmapFromDrawable(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 236
    invoke-static {v0, v1}, Lcom/miui/maml/util/BitmapUtils;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 237
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 240
    :cond_9
    invoke-static/range {p9 .. p9}, Lcom/miui/maml/util/LargeIconsHelper;->isXSpaceUserId(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 242
    invoke-static {p0, v11}, Lcom/miui/maml/util/PortableUtils;->getXSpaceBadgeDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 243
    invoke-static {p0, v0, v1}, Lcom/miui/maml/util/PortableUtils;->getXspaceDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 248
    :cond_a
    invoke-virtual {v13, v0}, Lcom/miui/maml/LargeIconDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_b
    move-object v1, v11

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    .line 214
    invoke-static/range {v0 .. v7}, Lcom/miui/maml/util/LargeIconsHelper;->getFancyDrawable(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 216
    invoke-static {p0, v0, v9}, Lcom/miui/maml/util/PortableUtils;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 218
    :cond_c
    invoke-virtual {v13, v0}, Lcom/miui/maml/LargeIconDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_d
    move-object v1, v11

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    .line 206
    invoke-static/range {v0 .. v7}, Lcom/miui/maml/util/LargeIconsHelper;->getAnimatingDrawable(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 208
    invoke-static {p0, v0, v9}, Lcom/miui/maml/util/PortableUtils;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 210
    :cond_e
    invoke-virtual {v13, v0}, Lcom/miui/maml/LargeIconDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_f
    move-object v1, v11

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    .line 198
    invoke-static/range {v0 .. v7}, Lcom/miui/maml/util/LargeIconsHelper;->getAdaptiveDrawable(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 200
    invoke-static {p0, v0, v9}, Lcom/miui/maml/util/PortableUtils;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 202
    :cond_10
    invoke-virtual {v13, v0}, Lcom/miui/maml/LargeIconDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    return-object v13

    .line 158
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "init LargeIconModeRuntimeManager error, mode is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x4cb8ad07 -> :sswitch_3
        0x1b8a0 -> :sswitch_2
        0x2bfdbc0b -> :sswitch_1
        0x6d53da24 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getLargeIconDrawableType(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->path:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 275
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 277
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 278
    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_6

    aget-object v2, p0, v1

    const-string v3, "layer_animating_icons"

    .line 282
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    const-string v3, "fancy_icons"

    .line 284
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    const-string v3, "animating_icons"

    .line 286
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_3
    const-string v3, "res"

    .line 288
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v3

    :cond_4
    const-string v3, "pair"

    .line 290
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-object v0
.end method

.method private static getLayerAnimIndex(Lcom/miui/maml/util/ConfigFile;I)I
    .locals 2

    if-eqz p0, :cond_0

    .line 392
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getOriginLargeIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 10

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    .line 138
    invoke-static/range {v0 .. v9}, Lcom/miui/maml/util/LargeIconsHelper;->getLargeIconDrawable(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getResDrawable(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string p5, "window"

    .line 556
    invoke-virtual {p2, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/WindowManager;

    .line 557
    invoke-interface {p5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p5

    .line 558
    new-instance p6, Landroid/util/DisplayMetrics;

    invoke-direct {p6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 559
    invoke-virtual {p5, p6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 561
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/miui/maml/util/LargeIconsHelper;->generateLargeIconFolderPath(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "res"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 563
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "drawable"

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p7

    invoke-virtual {p7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p7

    invoke-static {p7}, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->getScreenWidthSuffix(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p7, p6, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 564
    invoke-static {p7}, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 566
    new-instance p7, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p7}, Ljava/io/File;->exists()Z

    move-result p7

    if-nez p7, :cond_0

    .line 569
    iget p5, p6, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p1, p5}, Lcom/miui/maml/util/ThemeDensityFallbackUtils;->findNearestDir(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p5

    .line 572
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-eqz p7, :cond_1

    .line 573
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "can not find the ResDrawable dir that is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and activity is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LargeIconsHelper"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 577
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget p3, p6, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p2, p1, p0, p3}, Lcom/miui/maml/util/LargeIconResManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getUseFancyWhenStaticFromConfig(Lcom/miui/maml/util/ConfigFile;I)Z
    .locals 3

    if-eqz p0, :cond_1

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "use_fancy_when_static_layer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layer_only_fancy"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static getUseQuietWhenAnimFromConfig(Lcom/miui/maml/util/ConfigFile;I)Z
    .locals 3

    if-eqz p0, :cond_1

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "use_quiet_when_anim_layer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layer_only_quiet"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static hasLargeIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 0

    if-eqz p2, :cond_2

    const/4 p3, 0x0

    .line 102
    invoke-static {p2, p3}, Lcom/miui/maml/util/LargeIconsHelper;->getLargeIconConfigFile(Ljava/lang/String;Z)Lcom/miui/maml/util/LargeIconConfigFile;

    move-result-object p2

    if-nez p2, :cond_0

    return p3

    .line 108
    :cond_0
    invoke-virtual {p2}, Lcom/miui/maml/util/LargeIconConfigFile;->getIconsConfigs()Ljava/util/HashMap;

    move-result-object p2

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 111
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 113
    :cond_1
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 100
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "init LargeIconModeRuntimeManager error, mode is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isXSpaceUserId(Landroid/os/UserHandle;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.securityspace.XSpaceUserHandle"

    .line 264
    invoke-static {v1}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "isXSpaceUser"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 265
    const-class v6, Landroid/os/UserHandle;

    aput-object v6, v5, v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-static {v1, v2, v3, v5, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "LargeIconsHelper"

    const-string v2, "Invoke | XSpaceUserHandle isXSpaceUser() occur EXCEPTION: "

    .line 267
    invoke-static {v1, v2, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method static synthetic lambda$static$0(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 584
    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->setScaleByDensity(Z)V

    :cond_0
    return-void
.end method

.method private static myUserId()I
    .locals 6

    .line 321
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 323
    :try_start_0
    const-class v0, Landroid/os/UserHandle;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "myUserId"

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4, v5}, Lmiuix/internal/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method
