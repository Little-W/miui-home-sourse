.class public final synthetic Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$SrQfDN4HxBxqWFd9QEscAOGEgbA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$SrQfDN4HxBxqWFd9QEscAOGEgbA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$SrQfDN4HxBxqWFd9QEscAOGEgbA;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$SrQfDN4HxBxqWFd9QEscAOGEgbA;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$SrQfDN4HxBxqWFd9QEscAOGEgbA;->INSTANCE:Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$SrQfDN4HxBxqWFd9QEscAOGEgbA;

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

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->lambda$static$196(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z

    move-result p1

    return p1
.end method
