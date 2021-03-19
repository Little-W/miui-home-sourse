.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$yUuxMqjLLJNQoCocfUyY16yUfJY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$yUuxMqjLLJNQoCocfUyY16yUfJY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$yUuxMqjLLJNQoCocfUyY16yUfJY;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$yUuxMqjLLJNQoCocfUyY16yUfJY;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$yUuxMqjLLJNQoCocfUyY16yUfJY;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$yUuxMqjLLJNQoCocfUyY16yUfJY;

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

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$null$2(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    move-result-object p1

    return-object p1
.end method
