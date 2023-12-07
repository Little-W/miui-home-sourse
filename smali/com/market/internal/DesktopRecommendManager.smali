.class public Lcom/market/internal/DesktopRecommendManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/internal/DesktopRecommendManager$DesktopRecomendResponse;
    }
.end annotation


# static fields
.field private static sLoadingRequest:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/market/internal/DesktopRecommendManager;->sLoadingRequest:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/market/internal/DesktopRecommendManager;->sLoadingRequest:Ljava/util/Set;

    return-object v0
.end method

.method public static loadDesktopRecommendInfo(JLjava/lang/String;Ljava/util/List;Lcom/market/sdk/DesktopRecommendCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/market/sdk/DesktopRecommendCallback;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/market/internal/DesktopRecommendManager;->sLoadingRequest:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/market/internal/DesktopRecommendManager;->sLoadingRequest:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/market/internal/DesktopRecommendManager;->sLoadingRequest:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/market/internal/DesktopRecommendManager$1;

    move-object v3, v1

    move-wide v4, p0

    move-object v6, p4

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/market/internal/DesktopRecommendManager$1;-><init>(JLcom/market/sdk/DesktopRecommendCallback;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/market/internal/DesktopRecommendManager$1;->invokeAsync()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
