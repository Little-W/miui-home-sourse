.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$6WDgRIh3HbheI1lnr8uRSOgrX8Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

.field private final synthetic f$1:Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$6WDgRIh3HbheI1lnr8uRSOgrX8Y;->f$0:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$6WDgRIh3HbheI1lnr8uRSOgrX8Y;->f$1:Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    iput p3, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$6WDgRIh3HbheI1lnr8uRSOgrX8Y;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$6WDgRIh3HbheI1lnr8uRSOgrX8Y;->f$0:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$6WDgRIh3HbheI1lnr8uRSOgrX8Y;->f$1:Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    iget p0, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$6WDgRIh3HbheI1lnr8uRSOgrX8Y;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->lambda$trackViewEvent$0$GlobalRecommendController(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V

    return-void
.end method
