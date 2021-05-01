.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$aXi73aLCPZ13DBH9A2dpC82U_l4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

.field private final synthetic f$1:Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$aXi73aLCPZ13DBH9A2dpC82U_l4;->f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$aXi73aLCPZ13DBH9A2dpC82U_l4;->f$1:Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    iput p3, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$aXi73aLCPZ13DBH9A2dpC82U_l4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$aXi73aLCPZ13DBH9A2dpC82U_l4;->f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$aXi73aLCPZ13DBH9A2dpC82U_l4;->f$1:Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    iget v2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$aXi73aLCPZ13DBH9A2dpC82U_l4;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$trackViewEvent$429(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V

    return-void
.end method
