.class public final synthetic Lcom/miui/blur/sdk/backdrop/-$$Lambda$CxwrBN88dJdPTZMSH3WFwUWKqjU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/blur/sdk/backdrop/-$$Lambda$CxwrBN88dJdPTZMSH3WFwUWKqjU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/blur/sdk/backdrop/-$$Lambda$CxwrBN88dJdPTZMSH3WFwUWKqjU;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/-$$Lambda$CxwrBN88dJdPTZMSH3WFwUWKqjU;-><init>()V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/-$$Lambda$CxwrBN88dJdPTZMSH3WFwUWKqjU;->INSTANCE:Lcom/miui/blur/sdk/backdrop/-$$Lambda$CxwrBN88dJdPTZMSH3WFwUWKqjU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    invoke-interface {p1}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->postInvalidateOnAnimation()V

    return-void
.end method
