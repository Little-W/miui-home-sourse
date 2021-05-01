.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$2cXW5Q84PptTjyMJvc-PeqWgiM8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$2cXW5Q84PptTjyMJvc-PeqWgiM8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$2cXW5Q84PptTjyMJvc-PeqWgiM8;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$2cXW5Q84PptTjyMJvc-PeqWgiM8;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$2cXW5Q84PptTjyMJvc-PeqWgiM8;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$2cXW5Q84PptTjyMJvc-PeqWgiM8;

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

    check-cast p1, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$null$436(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    move-result-object p1

    return-object p1
.end method
