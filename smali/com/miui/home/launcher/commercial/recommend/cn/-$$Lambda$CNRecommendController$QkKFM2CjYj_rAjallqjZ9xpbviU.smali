.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$QkKFM2CjYj_rAjallqjZ9xpbviU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$QkKFM2CjYj_rAjallqjZ9xpbviU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$QkKFM2CjYj_rAjallqjZ9xpbviU;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$QkKFM2CjYj_rAjallqjZ9xpbviU;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$QkKFM2CjYj_rAjallqjZ9xpbviU;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$QkKFM2CjYj_rAjallqjZ9xpbviU;

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

    check-cast p1, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$null$4(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    move-result-object p1

    return-object p1
.end method
