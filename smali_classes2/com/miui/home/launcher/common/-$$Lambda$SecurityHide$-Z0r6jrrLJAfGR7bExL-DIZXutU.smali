.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$-Z0r6jrrLJAfGR7bExL-DIZXutU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$-Z0r6jrrLJAfGR7bExL-DIZXutU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$-Z0r6jrrLJAfGR7bExL-DIZXutU;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$-Z0r6jrrLJAfGR7bExL-DIZXutU;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$-Z0r6jrrLJAfGR7bExL-DIZXutU;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$-Z0r6jrrLJAfGR7bExL-DIZXutU;

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

    invoke-static {p1}, Lcom/miui/home/launcher/common/SecurityHide;->lambda$getSecurityHideItemsAsync$2(Ljava/util/ArrayList;)V

    return-void
.end method
