.class public final synthetic Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$Ev77WrB1RBtP0DUM1f2R8p-uQLA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$Ev77WrB1RBtP0DUM1f2R8p-uQLA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$Ev77WrB1RBtP0DUM1f2R8p-uQLA;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$Ev77WrB1RBtP0DUM1f2R8p-uQLA;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$Ev77WrB1RBtP0DUM1f2R8p-uQLA;->INSTANCE:Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$Ev77WrB1RBtP0DUM1f2R8p-uQLA;

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

    move-result-object p0

    return-object p0
.end method
