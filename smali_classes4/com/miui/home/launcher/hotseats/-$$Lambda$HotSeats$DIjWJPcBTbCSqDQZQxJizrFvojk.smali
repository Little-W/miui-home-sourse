.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$DIjWJPcBTbCSqDQZQxJizrFvojk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$DIjWJPcBTbCSqDQZQxJizrFvojk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$DIjWJPcBTbCSqDQZQxJizrFvojk;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$DIjWJPcBTbCSqDQZQxJizrFvojk;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$DIjWJPcBTbCSqDQZQxJizrFvojk;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$DIjWJPcBTbCSqDQZQxJizrFvojk;

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

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/hotseats/HotSeats;->lambda$getHotSeatsList$0(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method
