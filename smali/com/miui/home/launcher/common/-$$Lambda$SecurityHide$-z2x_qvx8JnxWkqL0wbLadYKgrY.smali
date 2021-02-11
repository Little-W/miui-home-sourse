.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$-z2x_qvx8JnxWkqL0wbLadYKgrY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$-z2x_qvx8JnxWkqL0wbLadYKgrY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$-z2x_qvx8JnxWkqL0wbLadYKgrY;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$-z2x_qvx8JnxWkqL0wbLadYKgrY;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$-z2x_qvx8JnxWkqL0wbLadYKgrY;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$-z2x_qvx8JnxWkqL0wbLadYKgrY;

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

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1}, Lcom/miui/home/launcher/common/SecurityHide;->lambda$static$0(Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
