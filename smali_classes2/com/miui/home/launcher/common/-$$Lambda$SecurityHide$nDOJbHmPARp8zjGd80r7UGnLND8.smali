.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$nDOJbHmPARp8zjGd80r7UGnLND8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$nDOJbHmPARp8zjGd80r7UGnLND8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$nDOJbHmPARp8zjGd80r7UGnLND8;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$nDOJbHmPARp8zjGd80r7UGnLND8;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$nDOJbHmPARp8zjGd80r7UGnLND8;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$SecurityHide$nDOJbHmPARp8zjGd80r7UGnLND8;

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

    move-result-object p0

    return-object p0
.end method
