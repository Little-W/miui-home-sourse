.class public final Lcom/miui/home/launcher/operationicon/OperationIconProvider;
.super Ljava/lang/Object;
.source "OperationIconProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/operationicon/OperationIconProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationIconProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationIconProvider.kt\ncom/miui/home/launcher/operationicon/OperationIconProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,83:1\n734#2:84\n825#2,2:85\n1819#2,2:96\n461#3,7:87\n181#4,2:94\n*E\n*S KotlinDebug\n*F\n+ 1 OperationIconProvider.kt\ncom/miui/home/launcher/operationicon/OperationIconProvider\n*L\n64#1:84\n64#1,2:85\n72#1,2:96\n64#1,7:87\n64#1,2:94\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/operationicon/OperationIconProvider$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# instance fields
.field private providerIconMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/operationicon/OperationIconInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/operationicon/OperationIconProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/operationicon/OperationIconProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconProvider$Companion;

    .line 18
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/launcher/operationicon/OperationIconProvider$Companion$instance$2;->INSTANCE:Lcom/miui/home/launcher/operationicon/OperationIconProvider$Companion$instance$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->providerIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    sget-object v0, Lcom/miui/home/library/publishservice/PublishServiceManager;->Companion:Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;->getInstance()Lcom/miui/home/library/publishservice/PublishServiceManager;

    move-result-object v0

    const-class v1, Lcom/miui/home/library/publishservice/OperationIconService;

    new-instance v2, Lcom/miui/home/launcher/operationicon/OperationIconProvider$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/operationicon/OperationIconProvider$1;-><init>(Lcom/miui/home/launcher/operationicon/OperationIconProvider;)V

    check-cast v2, Lcom/miui/home/library/publishservice/IPublishService;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/library/publishservice/PublishServiceManager;->register(Ljava/lang/Class;Lcom/miui/home/library/publishservice/IPublishService;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/OperationIconProvider;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 15
    sget-object v0, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final containsIcon(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/operationicon/OperationIconInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 72
    check-cast p1, Ljava/lang/Iterable;

    .line 96
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    .line 73
    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final getIconFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 79
    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/Utilities;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 80
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    const/4 p0, 0x0

    invoke-static {p2, p0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 79
    :goto_0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public final getExecutedIconMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/operationicon/OperationIconInfo;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->providerIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getIcon(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    sget-object p2, Lcom/miui/home/launcher/operationicon/OperationIconCache;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    invoke-virtual {p2}, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconCache;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->get(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconEnable(J)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getLocalIconUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 43
    check-cast v2, Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "Uri.parse(uriStr)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->getIconFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->providerIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v1

    :cond_3
    return-object v0

    .line 41
    :cond_4
    move-object p0, v0

    check-cast p0, Ljava/lang/Void;

    :cond_5
    :goto_0
    return-object v0
.end method

.method public final removeInvalidIconInfo(J)V
    .locals 4

    .line 64
    sget-object v0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 85
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    .line 64
    invoke-virtual {v3, p1, p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconEnable(J)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 65
    iget-object p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->providerIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Ljava/util/Map;

    .line 87
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 88
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->containsIcon(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 93
    :cond_3
    check-cast p2, Ljava/util/Map;

    .line 94
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->providerIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-void
.end method
