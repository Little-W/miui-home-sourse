.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$XwjodvyLB_SYZ0yqPYj-r4-nw8c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$XwjodvyLB_SYZ0yqPYj-r4-nw8c;->f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$XwjodvyLB_SYZ0yqPYj-r4-nw8c;->f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$getFolderPreinstallInfoList$6(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z

    move-result p1

    return p1
.end method
