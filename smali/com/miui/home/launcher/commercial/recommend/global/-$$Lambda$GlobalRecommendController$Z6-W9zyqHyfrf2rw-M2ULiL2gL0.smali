.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$Z6-W9zyqHyfrf2rw-M2ULiL2gL0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$Z6-W9zyqHyfrf2rw-M2ULiL2gL0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$Z6-W9zyqHyfrf2rw-M2ULiL2gL0;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$Z6-W9zyqHyfrf2rw-M2ULiL2gL0;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$Z6-W9zyqHyfrf2rw-M2ULiL2gL0;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$Z6-W9zyqHyfrf2rw-M2ULiL2gL0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->lambda$null$1(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;

    move-result-object p1

    return-object p1
.end method
