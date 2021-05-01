.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$5W7NvBtdCFJff3zl9SFTHOpmkqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$5W7NvBtdCFJff3zl9SFTHOpmkqE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$5W7NvBtdCFJff3zl9SFTHOpmkqE;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$5W7NvBtdCFJff3zl9SFTHOpmkqE;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$5W7NvBtdCFJff3zl9SFTHOpmkqE;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$5W7NvBtdCFJff3zl9SFTHOpmkqE;

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

    check-cast p1, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->lambda$null$426(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    move-result-object p1

    return-object p1
.end method
