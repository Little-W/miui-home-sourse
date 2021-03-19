.class public final synthetic Lcom/miui/blur/sdk/backdrop/-$$Lambda$W3MK_dMcpgVgl_xQ2qWSLX5btIg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/blur/sdk/backdrop/-$$Lambda$W3MK_dMcpgVgl_xQ2qWSLX5btIg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/blur/sdk/backdrop/-$$Lambda$W3MK_dMcpgVgl_xQ2qWSLX5btIg;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/-$$Lambda$W3MK_dMcpgVgl_xQ2qWSLX5btIg;-><init>()V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/-$$Lambda$W3MK_dMcpgVgl_xQ2qWSLX5btIg;->INSTANCE:Lcom/miui/blur/sdk/backdrop/-$$Lambda$W3MK_dMcpgVgl_xQ2qWSLX5btIg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    invoke-interface {p1}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getRequestedSamplingPeriodNs()I

    move-result p1

    return p1
.end method
