.class Lcom/market/internal/DesktopRecommendManager$DesktopRecomendResponse;
.super Lcom/market/sdk/IDesktopRecommendResponse$Stub;
.source "DesktopRecommendManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/internal/DesktopRecommendManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DesktopRecomendResponse"
.end annotation


# instance fields
.field private mCallback:Lcom/market/sdk/DesktopRecommendCallback;

.field private mFolderId:J


# direct methods
.method public constructor <init>(JLcom/market/sdk/DesktopRecommendCallback;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/market/sdk/IDesktopRecommendResponse$Stub;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/market/internal/DesktopRecommendManager$DesktopRecomendResponse;->mFolderId:J

    .line 51
    iput-object p3, p0, Lcom/market/internal/DesktopRecommendManager$DesktopRecomendResponse;->mCallback:Lcom/market/sdk/DesktopRecommendCallback;

    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .locals 3

    .line 64
    invoke-static {}, Lcom/market/internal/DesktopRecommendManager;->access$000()Ljava/util/Set;

    move-result-object v0

    iget-wide v1, p0, Lcom/market/internal/DesktopRecommendManager$DesktopRecomendResponse;->mFolderId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-object p0, p0, Lcom/market/internal/DesktopRecommendManager$DesktopRecomendResponse;->mCallback:Lcom/market/sdk/DesktopRecommendCallback;

    if-eqz p0, :cond_0

    .line 66
    invoke-interface {p0}, Lcom/market/sdk/DesktopRecommendCallback;->onLoadFailed()V

    :cond_0
    return-void
.end method

.method public onLoadSuccess(Lcom/market/sdk/DesktopRecommendInfo;)V
    .locals 3

    .line 56
    invoke-static {}, Lcom/market/internal/DesktopRecommendManager;->access$000()Ljava/util/Set;

    move-result-object v0

    iget-wide v1, p0, Lcom/market/internal/DesktopRecommendManager$DesktopRecomendResponse;->mFolderId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 57
    iget-object p0, p0, Lcom/market/internal/DesktopRecommendManager$DesktopRecomendResponse;->mCallback:Lcom/market/sdk/DesktopRecommendCallback;

    if-eqz p0, :cond_0

    .line 58
    invoke-interface {p0, p1}, Lcom/market/sdk/DesktopRecommendCallback;->onLoadSuccess(Lcom/market/sdk/DesktopRecommendInfo;)V

    :cond_0
    return-void
.end method
