.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$RekHUrodpu9Q64kgbjpYvlGDrq4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/market/sdk/homeguide/Interceptor;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$RekHUrodpu9Q64kgbjpYvlGDrq4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$RekHUrodpu9Q64kgbjpYvlGDrq4;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$RekHUrodpu9Q64kgbjpYvlGDrq4;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$RekHUrodpu9Q64kgbjpYvlGDrq4;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$RekHUrodpu9Q64kgbjpYvlGDrq4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/common/MarketUtils;->lambda$startUserGuide$1()Z

    move-result v0

    return v0
.end method
