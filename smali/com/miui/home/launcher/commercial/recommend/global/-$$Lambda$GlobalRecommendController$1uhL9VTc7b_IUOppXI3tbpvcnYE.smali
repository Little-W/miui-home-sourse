.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$1uhL9VTc7b_IUOppXI3tbpvcnYE;
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

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$1uhL9VTc7b_IUOppXI3tbpvcnYE;->f$0:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$1uhL9VTc7b_IUOppXI3tbpvcnYE;->f$1:Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    iput p3, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$1uhL9VTc7b_IUOppXI3tbpvcnYE;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$1uhL9VTc7b_IUOppXI3tbpvcnYE;->f$0:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$1uhL9VTc7b_IUOppXI3tbpvcnYE;->f$1:Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    iget v2, p0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$1uhL9VTc7b_IUOppXI3tbpvcnYE;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->lambda$trackViewEvent$423(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V

    return-void
.end method
