.class public final synthetic Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$FU2x8NEHGjUviRQnhp5uByXbnNQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$FU2x8NEHGjUviRQnhp5uByXbnNQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$FU2x8NEHGjUviRQnhp5uByXbnNQ;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$FU2x8NEHGjUviRQnhp5uByXbnNQ;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$FU2x8NEHGjUviRQnhp5uByXbnNQ;->INSTANCE:Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$FU2x8NEHGjUviRQnhp5uByXbnNQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    check-cast p2, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->lambda$static$1(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
