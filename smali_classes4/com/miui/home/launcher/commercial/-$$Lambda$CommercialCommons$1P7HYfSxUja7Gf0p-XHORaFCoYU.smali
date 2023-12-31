.class public final synthetic Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$1P7HYfSxUja7Gf0p-XHORaFCoYU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$1P7HYfSxUja7Gf0p-XHORaFCoYU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$1P7HYfSxUja7Gf0p-XHORaFCoYU;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$1P7HYfSxUja7Gf0p-XHORaFCoYU;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$1P7HYfSxUja7Gf0p-XHORaFCoYU;->INSTANCE:Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$1P7HYfSxUja7Gf0p-XHORaFCoYU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->lambda$static$0(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z

    move-result p0

    return p0
.end method
