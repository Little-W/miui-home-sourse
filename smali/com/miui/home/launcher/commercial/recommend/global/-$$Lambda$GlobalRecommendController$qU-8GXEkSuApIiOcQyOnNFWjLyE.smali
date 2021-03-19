.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$qU-8GXEkSuApIiOcQyOnNFWjLyE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:I

.field private final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Ljava/util/List;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$qU-8GXEkSuApIiOcQyOnNFWjLyE;->f$0:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$qU-8GXEkSuApIiOcQyOnNFWjLyE;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$qU-8GXEkSuApIiOcQyOnNFWjLyE;->f$2:I

    iput-wide p4, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$qU-8GXEkSuApIiOcQyOnNFWjLyE;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$qU-8GXEkSuApIiOcQyOnNFWjLyE;->f$0:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$qU-8GXEkSuApIiOcQyOnNFWjLyE;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$qU-8GXEkSuApIiOcQyOnNFWjLyE;->f$2:I

    iget-wide v3, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$qU-8GXEkSuApIiOcQyOnNFWjLyE;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->lambda$handleClick$2(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Ljava/util/List;IJ)V

    return-void
.end method
