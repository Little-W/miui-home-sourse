.class public final synthetic Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$qE4BL1RkNkdp5Ykj9HBZ7hODt3Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$qE4BL1RkNkdp5Ykj9HBZ7hODt3Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$qE4BL1RkNkdp5Ykj9HBZ7hODt3Q;

    invoke-direct {v0}, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$qE4BL1RkNkdp5Ykj9HBZ7hODt3Q;-><init>()V

    sput-object v0, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$qE4BL1RkNkdp5Ykj9HBZ7hODt3Q;->INSTANCE:Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$qE4BL1RkNkdp5Ykj9HBZ7hODt3Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/app/prediction/AppTarget;

    check-cast p2, Landroid/app/prediction/AppTarget;

    invoke-static {p1, p2}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->lambda$onTargetsAvailable$1(Landroid/app/prediction/AppTarget;Landroid/app/prediction/AppTarget;)I

    move-result p0

    return p0
.end method
