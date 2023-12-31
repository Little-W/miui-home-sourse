.class public final synthetic Lcom/miui/home/launcher/util/-$$Lambda$DimenUtils1X$ISZ70K8Tsmr6qslp7F4-j8v0NIk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/util/-$$Lambda$DimenUtils1X$ISZ70K8Tsmr6qslp7F4-j8v0NIk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/util/-$$Lambda$DimenUtils1X$ISZ70K8Tsmr6qslp7F4-j8v0NIk;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/-$$Lambda$DimenUtils1X$ISZ70K8Tsmr6qslp7F4-j8v0NIk;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/util/-$$Lambda$DimenUtils1X$ISZ70K8Tsmr6qslp7F4-j8v0NIk;->INSTANCE:Lcom/miui/home/launcher/util/-$$Lambda$DimenUtils1X$ISZ70K8Tsmr6qslp7F4-j8v0NIk;

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

    check-cast p1, Landroid/content/Context;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/util/DimenUtils1X;->lambda$static$2(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
