.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$2$BmXV71nZYWkGOTA5ryIYozlcBmI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$2$BmXV71nZYWkGOTA5ryIYozlcBmI;->f$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$2$BmXV71nZYWkGOTA5ryIYozlcBmI;->f$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;

    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;->lambda$run$205(Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)V

    return-void
.end method