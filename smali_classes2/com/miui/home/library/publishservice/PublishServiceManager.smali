.class public final Lcom/miui/home/library/publishservice/PublishServiceManager;
.super Ljava/lang/Object;
.source "PublishServiceManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublishServiceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublishServiceManager.kt\ncom/miui/home/library/publishservice/PublishServiceManager\n*L\n1#1,38:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# instance fields
.field private final serviceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/home/library/publishservice/IPublishService;",
            ">;",
            "Lcom/miui/home/library/publishservice/IPublishService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/library/publishservice/PublishServiceManager;->Companion:Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;

    .line 10
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/library/publishservice/PublishServiceManager$Companion$instance$2;->INSTANCE:Lcom/miui/home/library/publishservice/PublishServiceManager$Companion$instance$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/library/publishservice/PublishServiceManager;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/publishservice/PublishServiceManager;->serviceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/miui/home/library/publishservice/PublishServiceManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 5
    sget-object v0, Lcom/miui/home/library/publishservice/PublishServiceManager;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final getService(Ljava/lang/Class;)Lcom/miui/home/library/publishservice/IPublishService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/miui/home/library/publishservice/IPublishService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 19
    iget-object p0, p0, Lcom/miui/home/library/publishservice/PublishServiceManager;->serviceMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/miui/home/library/publishservice/IPublishService;

    if-nez p1, :cond_0

    move-object p0, v0

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/miui/home/library/publishservice/IPublishService;

    :cond_1
    return-object v0
.end method

.method public final register(Ljava/lang/Class;Lcom/miui/home/library/publishservice/IPublishService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/home/library/publishservice/IPublishService;",
            ">;",
            "Lcom/miui/home/library/publishservice/IPublishService;",
            ")V"
        }
    .end annotation

    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/miui/home/library/publishservice/PublishServiceManager;->serviceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/miui/home/library/publishservice/PublishServiceManager;->serviceMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
