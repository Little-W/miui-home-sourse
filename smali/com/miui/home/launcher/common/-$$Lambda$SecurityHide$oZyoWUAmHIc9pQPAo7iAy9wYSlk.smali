.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$oZyoWUAmHIc9pQPAo7iAy9wYSlk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$oZyoWUAmHIc9pQPAo7iAy9wYSlk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$oZyoWUAmHIc9pQPAo7iAy9wYSlk;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$oZyoWUAmHIc9pQPAo7iAy9wYSlk;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$oZyoWUAmHIc9pQPAo7iAy9wYSlk;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$oZyoWUAmHIc9pQPAo7iAy9wYSlk;

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

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/miui/home/launcher/common/SecurityHide;->lambda$getSecurityHideItemsAsync$464(Ljava/util/ArrayList;)V

    return-void
.end method
