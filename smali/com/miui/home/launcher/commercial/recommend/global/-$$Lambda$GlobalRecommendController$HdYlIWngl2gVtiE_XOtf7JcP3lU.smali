.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$HdYlIWngl2gVtiE_XOtf7JcP3lU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$HdYlIWngl2gVtiE_XOtf7JcP3lU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$HdYlIWngl2gVtiE_XOtf7JcP3lU;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$HdYlIWngl2gVtiE_XOtf7JcP3lU;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$HdYlIWngl2gVtiE_XOtf7JcP3lU;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$HdYlIWngl2gVtiE_XOtf7JcP3lU;

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

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->lambda$null$3(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    move-result-object p1

    return-object p1
.end method
